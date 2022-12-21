FROM nginx:alpine

RUN apk update && apk add php81 php81-fpm
COPY default.conf /etc/nginx/conf.d/default.conf
COPY . /usr/share/nginx/html

CMD php-fpm81 -D && nginx -g "daemon off;"

EXPOSE 80
