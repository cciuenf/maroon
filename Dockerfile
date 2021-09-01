FROM node:16.5-alpine3.12

MAINTAINER matdsoupe

RUN apk add --no-cache build-base python3 \
      && ln -sf python3 /usr/bin/python

WORKDIR /maroon

ARG NODE_ENV=production

COPY package.json yarn.lock bsconfig.json ./

RUN yarn

COPY . ./

CMD ["sh", "./entrypoint.sh"]
