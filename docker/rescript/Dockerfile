FROM node:16.5-alpine3.12

MAINTAINER zoedsoupe

WORKDIR /maroon

RUN apk update && apk upgrade

RUN apk add --no-cache make g++ build-base python3 \
      && ln -sf python3 /usr/bin/python

COPY package.json yarn.lock bsconfig.json ./

RUN yarn

COPY . ./

RUN yarn rescript build -with-deps
