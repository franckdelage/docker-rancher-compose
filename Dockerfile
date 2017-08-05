FROM rtfpessoa/ubuntu-compose:latest

MAINTAINER Franck Delage <franck@web82.fr>

RUN apt-get update && apt-get install -qq -y --no-install-recommends \
    ca-certificates curl unzip software-properties-common apt-transport-https
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
RUN apt-get update && apt-get install -qq -y docker-ce

ARG RANCHER_COMPOSE_VERSION=0.12.5

RUN curl -sSL "https://github.com/rancher/rancher-compose/releases/download/v${RANCHER_COMPOSE_VERSION}/rancher-compose-linux-amd64-v${RANCHER_COMPOSE_VERSION}.tar.gz" | tar -xzp -C /usr/local/bin/ --strip-components=2
