FROM resin/raspberrypi3-node:6.9.1

WORKDIR /usr/src/app

COPY package.json package.json
RUN npm install
COPY . .
CMD ["node", "main.js"]
