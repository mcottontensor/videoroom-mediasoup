FROM node:19.1.0

RUN apt-get update && apt-get install -y python3-pip
WORKDIR videoroom
COPY package.json .
COPY config.js .
COPY public .
COPY server/ssl server/
RUN npm install
RUN npm build

CMD [ "node", "app.js" ]
