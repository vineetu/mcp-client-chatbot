#!/usr/bin/env bash
# setup-minikube.sh
# Idempotent installer for MCP Client Chatbot on Minikube (with PostgreSQL).

set -euo pipefail

# ───────────────────────────────────────────────────────── helpers ──────────
need() { command -v "$1" &>/dev/null || { echo "✖ $1 not found"; exit 1; }; }
log()  { printf '\n▶ %s\n' "$*"; }

need minikube; need kubectl; need docker

PROJECT_ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"   # repo root

cd "$PROJECT_ROOT"
# ─────────────────────────────────────────── 0) Content hash for image tag ──
# Calculate a repeatable hash from the Dockerfile + everything under src/
HASH=$(find "${PROJECT_ROOT}/docker/app/Dockerfile" "${PROJECT_ROOT}/src" \
         -type f -print0 | sort -z | xargs -0 sha1sum | sha1sum | cut -c1-12)
IMAGE_TAG="mcp-client-chatbot:${HASH}"

# Default host name for HTTPS access
HOST_NAME="${HOST_NAME:-chatbot.127.0.0.1.nip.io}"

# ─────────────────────────────────────────── 1) Minikube ────────────────────
if minikube status &>/dev/null; then
  log "Minikube already running – skipping start"
else
  log "Starting Minikube"
  minikube start --memory=4g --cpus=2
fi

log "Using Minikube’s Docker daemon"
eval "$(minikube -p minikube docker-env)"

# ─────────────────────────────────────────── 2) Build / load image ──────────
if docker image inspect "${IMAGE_TAG}" &>/dev/null; then
  log "Image ${IMAGE_TAG} already present – skipping build"
else
  log "Building image ${IMAGE_TAG}"
  docker build \
    -t "${IMAGE_TAG}" \
    -t mcp-client-chatbot:latest \
    -f docker/app/Dockerfile .
fi

# ─────────────────────────────────────────── 3) CloudNativePG operator ──────
if kubectl get deployment -n cnpg-system 2>/dev/null | grep -q cloudnative-pg; then
  log "CloudNativePG operator already installed – skipping"
else
  log "Installing CloudNativePG operator"
  kubectl apply -f https://raw.githubusercontent.com/cloudnative-pg/cloudnative-pg/release-1.21/releases/cnpg-1.21.0.yaml
  kubectl wait --for=condition=Available deployment -l app.kubernetes.io/name=cloudnative-pg -n cnpg-system
fi

# ─────────────────────────────────────────── 4) Postgres cluster ────────────
if kubectl get clusters.postgresql.cnpg.io postgres-db &>/dev/null; then
  log "Postgres cluster postgres-db already exists – skipping"
else
  log "Creating Postgres cluster"
  kubectl apply -f docker/app/kubernetes/pg/postgres-cluster.yaml
  kubectl wait --for=condition=Ready cluster/postgres-db
fi

# ─────────────────────────────────────────── 5) API-key secret ──────────────
# 5) Env-file secret ---------------------------------------------------------
if kubectl get secret mcp-client-env &>/dev/null; then
  log "Secret mcp-client-env already exists – skipping"
else
  log "Creating Secret from .env file"
  kubectl create secret generic mcp-client-env \
    --from-env-file="${PROJECT_ROOT}/.env"
fi

# ─────────────────────────────────────────── 6) Deployment  ─────────────────
log "Applying Deployment manifest"
kubectl apply -f docker/app/kubernetes/deploy.yaml

# Patch the image to the content-hash tag; Kubernetes rolls only if it changed
log "Ensuring deployment uses image ${IMAGE_TAG}"
kubectl set image deployment/mcp-client-chatbot \
  mcp-client-chatbot="${IMAGE_TAG}" --record

kubectl rollout status deployment/mcp-client-chatbot




# ─────────────────────────────────────────── 8) Ingress + TLS ───────────────
log "Ensuring ingress add-on is enabled"
minikube addons enable ingress &>/dev/null || true
kubectl wait --namespace ingress-nginx \
  --for=condition=Ready pod \
  --selector=app.kubernetes.io/component=controller

if kubectl get secret mcp-client-tls &>/dev/null; then
  log "TLS secret already exists – skipping"
else
  log "Creating self-signed TLS secret"
  openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -subj "/CN=${HOST_NAME}" \
    -keyout /tmp/tls.key -out /tmp/tls.crt
  kubectl create secret tls mcp-client-tls \
    --cert=/tmp/tls.crt --key=/tmp/tls.key
  rm /tmp/tls.crt /tmp/tls.key
fi

# ─────────────────────────────────────────── 7) Show service URL ────────────
log "Service URL:"
minikube service mcp-client-chatbot-svc --url