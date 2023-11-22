These are Docker images containing Node on Alpine Linux, with some extra packages for installing node modules
that do some building when they are installed.

## Building and Publishing

    docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v8 -t joeao/node-alpine-buildtools:16.20.1-alpine3.18 --push .
