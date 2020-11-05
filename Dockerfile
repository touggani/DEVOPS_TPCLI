FROM node:14.10.1

WORKDIR /

COPY package.json yarn.lock ./

RUN yarn install

EXPOSE 8080

RUN yarn global add node-gyp && yarn install

CMD [ "yarn", "start" ]
