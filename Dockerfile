FROM node:24-alpine3.23 AS builder

RUN apk update && apk add openssh git python3 make g++ && rm -rf /var/cache/apk/*

# Accept the Github host key
# https://stackoverflow.com/a/24898612
RUN mkdir -p /root/.ssh && ssh-keyscan -T 30 -t rsa,ecdsa,ed25519 github.com >> /root/.ssh/known_hosts 2>&1
