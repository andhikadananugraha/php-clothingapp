FROM nginx:alpine

RUN apk update && apk add php8-fpm && php-fpm8
COPY default /etc/nginx/conf.d/default.conf
COPY . /usr/share/nginx/html

CMD php-fpm8 -D && nginx -g "daemon off;"

EXPOSE 80