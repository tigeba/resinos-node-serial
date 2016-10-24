FROM resin/raspberrypi3-alpine-node:slim

## Needed to add python and gcc to build serialport
## could probably trim it down..
RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
  && pip install virtualenv \
  && rm -rf /var/cache/apk/*

WORKDIR /usr/src/app

COPY package.json package.json
RUN npm install
COPY . .
CMD ["node", "main.js"]
