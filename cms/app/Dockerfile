FROM node:16-alpine

WORKDIR /opt/app

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

EXPOSE 1337

CMD ["yarn", "develop"]
