FROM node:16.5-alpine3.12

MAINTAINER zoedsoupe

WORKDIR /maroon

ARG NODE_ENV=production

RUN apk update && apk upgrade

RUN apk add --no-cache make g++ build-base python3 \
      && ln -sf python3 /usr/bin/python

COPY package.json yarn.lock ./

RUN yarn

COPY . ./

CMD ["sh", "../../entrypoint.sh"]
