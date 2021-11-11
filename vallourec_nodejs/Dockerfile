FROM node:16.13.0-alpine
RUN apk --no-cache add git

WORKDIR /usr/app

RUN git clone https://github.com/kamel-msaoubi/vallourec-smartengo-2.0-hackathon-node.js . && npm install

ENV WAIT_VERSION 2.7.2
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/$WAIT_VERSION/wait /wait
RUN chmod +x /wait

EXPOSE 8081