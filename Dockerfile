FROM golang:1.4

RUN apt-get update -y && \
  apt-get install -y curl git nodejs npm

RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN npm install -g bower
