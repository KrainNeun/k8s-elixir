FROM k8s-nodejs-10.16:latest

WORKDIR /client
COPY . .
#RUN npm install && \
#npm run build

FROM nginx:1.16.0-alpine

RUN apk update --no-cache && \
rm /etc/nginx/conf.d/*
ENV TZ='Asia/Tokyo'
#COPY local.conf /etc/nginx/conf.d/
#COPY --from=build /client/dist /usr/share/nginx/html
