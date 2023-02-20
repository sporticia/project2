# syntax=docker/dockerfile:1.5.0

FROM node:16.19-bullseye-slim as base
ARG NPM_TOKEN
ENV NPM_TOKEN={$NPM_TOKEN}
WORKDIR /src
COPY --link package.json yarn.lock docker/.npmrc ./
RUN --mount=type=secret,id=npm_token \
    --mount=type=cache,sharing=locked,target=/tmp/yarn-cache <<EOF
    yarn install --frozen-lockfile --silent --non-interactive --cache-folder /tmp/yarn-cache
    unset NPM_TOKEN
EOF
COPY --link ./ .