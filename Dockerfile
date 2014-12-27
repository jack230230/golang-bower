FROM golang:1.4-wheezy

# https://registry.hub.docker.com/u/google/nodejs/dockerfile/
RUN apt-get update -y && \
  apt-get install --no-install-recommends -y -q curl python build-essential git ca-certificates
RUN mkdir /nodejs && \
  curl http://nodejs.org/dist/v0.10.31/node-v0.10.31-linux-x64.tar.gz | tar xvzf - -C /nodejs --strip-components=1
  
RUN npm install -g bower