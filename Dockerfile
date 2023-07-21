FROM node:16.20.1-alpine3.18 AS builder

RUN apk update && apk add openssh git python3 make g++ && rm -rf /var/cache/apk/*

# Accept the Github host key
# https://stackoverflow.com/a/24898612
RUN mkdir -p /root/.ssh && ssh-keyscan -t rsa github.com 2>&1 >> /root/.ssh/known_hosts
