FROM golang:1.4-wheezy

# https://registry.hub.docker.com/u/google/nodejs/dockerfile/
RUN apt-get update -y && \
  apt-get install --no-install-recommends -y -q curl python build-essential git ca-certificates
RUN mkdir /nodejs && \
  curl https://nodejs.org/dist/v0.12.7/node-v0.12.7.tar.gz | tar xvzf - -C /nodejs --strip-components=1

ENV PATH $PATH:/nodejs/bin

RUN npm install -g bower
