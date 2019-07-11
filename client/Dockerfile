FROM node:10.14.2-alpine AS build

WORKDIR .
COPY . .
#RUN npm install && \
#npm run build


FROM nginx:1.16.0-alpine

RUN apk update --no-cache && \
rm /etc/nginx/conf.d/*
ENV TZ='Asia/Tokyo'
#COPY local.conf /etc/nginx/conf.d/
#COPY --from=build /client/dist /usr/share/nginx/html
