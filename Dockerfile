FROM node:16-alpine

RUN apk update && apk upgrade && \
    apk add --no-cache bash git && \
    apk add nginx

RUN git clone https://DoganbrosAdmin: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@github.com/doganbros/octopus.git

WORKDIR octopus

RUN cd /octopus

RUN npm i -g npm-run-all

RUN yarn

RUN cd /octopus

CMD yarn build && nginx && yarn server:start

#CMD ["yarn", "build"]

#CMD ["yarn", "server:start"]
