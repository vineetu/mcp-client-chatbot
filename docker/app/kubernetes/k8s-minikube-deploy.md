# Deploy MCP Client Chatbot on Minikube

This guide shows the shortest path to run the app with **PostgreSQL** on a local Minikube cluster.

## Prerequisites

* macOS / Linux with:
    * `docker`
    * `kubectl`
    * `minikube`  
      `brew install minikube`  (mac)
* API keys in your shell (or a `.env` file):
* OPENAI_API_KEY=sk-…
* ANTHROPIC_API_KEY=sk-…
* GOOGLE_GENERATIVE_AI_API_KEY=ai-…


## 1  Start Minikube

```bash
minikube start --memory=4g --cpus=2
eval "$(minikube -p minikube docker-env)"    # build inside the cluster
```

## 2  Build the Docker image

```bash
docker build -t mcp-client-chatbot:latest -f docker/app/Dockerfile .
```

*(If you build on your host instead, run `minikube image load mcp-client-chatbot:latest` afterward.)*

## 3  Install CloudNativePG operator and cluster

```bash
# operator
kubectl apply -f https://raw.githubusercontent.com/cloudnative-pg/cloudnative-pg/release-1.21/releases/cnpg-1.21.0.yaml
kubectl wait --for=condition=Available deployment -l app.kubernetes.io/name=cloudnative-pg -n cnpg-system

# cluster (provided file)
kubectl apply -f docker/app/kubernetes/pg/postgres-cluster.yaml
kubectl wait --for=condition=Ready cluster/postgres-db
```

The operator creates the service `postgres-db-rw` and the Secret  
`postgres-db-app` (contains `username`, `password`, `uri`).

## 4  Create an API-keys Secret (one-liner)

```bash
kubectl create secret generic mcp-client-api-keys \
  --from-literal=OPENAI_API_KEY="$OPENAI_API_KEY" \
  --from-literal=ANTHROPIC_API_KEY="$ANTHROPIC_API_KEY" \
  --from-literal=GOOGLE_GENERATIVE_AI_API_KEY="$GOOGLE_GENERATIVE_AI_API_KEY"
```

*(or use `--from-env-file=.env`)*

## 5  Deploy the application

`docker/app/kubernetes/deploy.yaml` already contains:

```yaml
env:
  - name: POSTGRES_URL
    valueFrom:
      secretKeyRef:
        name: postgres-db-app
        key: uri
  - name: USE_FILE_SYSTEM_DB
    value: "false"
envFrom:
  - secretRef:
      name: mcp-client-api-keys
```

Apply it:

```bash
kubectl apply -f docker/app/kubernetes/deploy.yaml
kubectl rollout status deployment/mcp-client-chatbot
```

An init-container will run `pnpm db:migrate` automatically.

## 6  Open the service

```bash
minikube service mcp-client-chatbot-svc --url
# or
kubectl port-forward svc/mcp-client-chatbot-svc 8080:8080
```

Browse to the printed URL (port 8080).

---

### Switching back to SQLite

```bash
kubectl set env deployment/mcp-client-chatbot USE_FILE_SYSTEM_DB=true --overwrite
kubectl rollout restart deployment/mcp-client-chatbot
```

That’s it—your chatbot is live on Minikube with a Postgres backend.