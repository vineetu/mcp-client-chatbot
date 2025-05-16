# syntax=docker.io/docker/dockerfile:1

FROM node:18-alpine3.20 AS base

# Install dependencies only when needed
FROM base AS deps
# Check https://github.com/nodejs/docker-node/tree/b4117f9333da4138b03a546ec926ef50a31506c3#nodealpine to understand why libc6-compat might be needed.
RUN apk add --no-cache libc6-compat tar wget gzip curl bash vim nano procps busybox-extras
WORKDIR /app


# --- choose one database path ------------------------------------
ENV USE_FILE_SYSTEM_DB=true \
  FILEBASE_URL=file:/app/data/db.sqlite     
#   POSTGRES_URL='postgres://user:pw@host:5432/db'  # (if you prefer PG)
# -----------------------------------------------------------------
RUN mkdir -p /app/data
# Make sure the folder exists so Drizzle can create the file
RUN mkdir -p /app/data
# Install dependencies based on the preferred package manager
COPY ../../package.json yarn.lock* package-lock.json* pnpm-lock.yaml* .npmrc* ./
RUN \
  if [ -f yarn.lock ]; then yarn --frozen-lockfile; \
  elif [ -f package-lock.json ]; then npm ci; \
  elif [ -f pnpm-lock.yaml ]; then corepack enable pnpm && pnpm i --frozen-lockfile; \
  else echo "Lockfile not found." && exit 1; \
  fi


# Rebuild the source code only when needed
FROM base AS builder
WORKDIR /app
COPY --from=deps /app/node_modules ./node_modules
COPY ../.. .
# Next.js collects completely anonymous telemetry data about general usage.
# Learn more here: https://nextjs.org/telemetry
# Uncomment the following line in case you want to disable telemetry during the build.
# ENV NEXT_TELEMETRY_DISABLED=1
RUN \
  if [ -f yarn.lock ]; then yarn run build; \
  elif [ -f package-lock.json ]; then npm run build; \
  elif [ -f pnpm-lock.yaml ]; then corepack enable pnpm && pnpm run build; \
  else echo "Lockfile not found." && exit 1; \
  fi

# Production image, copy all the files and run next
FROM base AS runner
WORKDIR /app


# 1.  keep the DB env-vars at runtime
ENV USE_FILE_SYSTEM_DB=false
# 2.  make sure the directory exists (not strictly required but tidy)
RUN mkdir -p /app/data

# 3.  bring in the pre-seeded DB file
COPY --from=builder /app/data/db.sqlite /app/data/db.sqlite


ENV NODE_ENV=production
# Uncomment the following line in case you want to disable telemetry during runtime.
# ENV NEXT_TELEMETRY_DISABLED=1

RUN addgroup --system --gid 1001 nodejs
RUN adduser --system --uid 1001 nextjs

RUN chown nextjs:nodejs /app/data/db.sqlite && chmod 664 /app/data/db.sqlite
RUN chown -R nextjs:nodejs /app/data && chmod 775 /app/data

COPY --from=builder /app/public ./public

COPY --from=builder --chown=nextjs:nodejs /app/.next/standalone ./
COPY --from=builder --chown=nextjs:nodejs /app/.next/static ./.next/static
COPY --from=builder /app/package*.json ./
COPY --from=builder /app/pnpm-lock.yaml ./


COPY --from=builder /app/scripts ./scripts
COPY --from=builder /app/src     ./src
COPY --from=builder /app/tsconfig.json ./tsconfig.json




RUN corepack enable pnpm \
  && pnpm install --frozen-lockfile

USER nextjs

EXPOSE 3000

ENV PORT=3000

# server.js is created by next build from the standalone output
# https://nextjs.org/docs/pages/api-reference/config/next-config-js/output
ENV HOSTNAME="0.0.0.0"
CMD ["sh", "-c", "set -a && [ -f .env ] && . ./.env ; exec node server.js"]