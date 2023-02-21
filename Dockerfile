FROM nginx:1.23.1-alpine-perl
RUN rm /etc/nginx/conf.d/default.conf
COPY site.template /etc/nginx/conf.d/
CMD envsubst '' < /etc/nginx/conf.d/site.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
COPY build/  /usr/share/nginx/html/
