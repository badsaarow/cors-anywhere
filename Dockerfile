FROM node:16

WORKDIR /usr/src/app
COPY package*.json ./
RUN yarn

COPY . .

EXPOSE 8080
ENV NODE_OPTIONS="--require helios-opentelemetry-sdk"
CMD [ "node", "server.js" ]
