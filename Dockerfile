FROM nginx:alpine

RUN apk update && apk add --no-cache wget

COPY docker/nginx.conf /etc/nginx/conf.d/default.conf
COPY docker/entrypoint.sh /entrypoint.sh

EXPOSE 80

ENTRYPOINT [ "/bin/sh", "/entrypoint.sh" ]