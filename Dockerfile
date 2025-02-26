FROM node:21-alpine as builder
WORKDIR '/usr/src/app'
COPY package.json .
RUN yarn
COPY . .
EXPOSE 3000
CMD [ "yarn", "run", "dev"]