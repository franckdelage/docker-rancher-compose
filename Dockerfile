FROM rtfpessoa/ubuntu-compose:latest

MAINTAINER Franck Delage <franck@web82.fr>

RUN apt-get update && apt-get install -qq -y --no-install-recommends \
    ca-certificates curl unzip

ARG RANCHER_COMPOSE_VERSION=0.12.5

RUN curl -sSL "https://github.com/rancher/rancher-compose/releases/download/v${RANCHER_COMPOSE_VERSION}/rancher-compose-linux-amd64-v${RANCHER_COMPOSE_VERSION}.tar.gz" | tar -xzp -C /usr/local/bin/ --strip-components=2
