FROM golang:1.4-wheezy

# https://registry.hub.docker.com/u/google/nodejs/dockerfile/
RUN apt-get update -y && \
  apt-get install -y curl git nodejs npm

RUN npm install -g bower
