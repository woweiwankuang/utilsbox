FROM nginx:1.23.1-alpine-perl
RUN rm /etc/nginx/conf.d/default.conf
COPY site.template /etc/nginx/conf.d/
COPY build/  /usr/share/nginx/html/
