FROM node:12 as base

RUN mkdir /usr/src/service
WORKDIR /usr/src/service

# want any changes in dependencies to invalidate yarn install
COPY package.json yarn.lock ./
## install our dependencies & remove the cache in one operation - reduces docker image size
RUN yarn && yarn cache clean

COPY . .

FROM base as build
RUN yarn --production


FROM nginx:alpine
COPY --from=build /usr/src/service/dist /usr/share/nginx/html
