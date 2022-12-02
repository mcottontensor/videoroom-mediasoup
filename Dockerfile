FROM ubuntu:20.04

RUN apt-get update && apt-get install -y curl build-essential

SHELL ["/bin/bash", "--login", "-c"]
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
RUN source /root/.bashrc && nvm install 19.1.0
SHELL ["/bin/bash", "--login", "-c"]

RUN mkdir videoroom
COPY package.json videoroom/
COPY config.js videoroom/config.js
COPY server/ssl/* videoroom/server/ssl/

RUN cd videoroom && npm install
