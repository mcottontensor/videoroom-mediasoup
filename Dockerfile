FROM ubuntu:20.04
SHELL ["/bin/bash", "--login", "-c"]

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
RUN nvm install 19.1.0

RUN mkdir videoroom
COPY package.json videoroom/
COPY config.js videoroom/config.js
COPY server/ssl/* videoroom/server/ssl/

RUN cd videoroom && npm install
