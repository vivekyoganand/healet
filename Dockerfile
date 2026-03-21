FROM nginx:1.27-alpine

RUN rm -rf /usr/share/nginx/html/*

COPY css/ /usr/share/nginx/html/css/
COPY fonts/ /usr/share/nginx/html/fonts/
COPY images/ /usr/share/nginx/html/images/
COPY js/ /usr/share/nginx/html/js/
COPY *.html /usr/share/nginx/html/

RUN chmod -R g=u /usr/share/nginx/html \
    /var/cache/nginx \
    /var/run \
    /var/log/nginx && \
    chown -R nginx:0 /usr/share/nginx/html

RUN sed -i 's/listen       80;/listen       8080;/g' /etc/nginx/conf.d/default.conf && \
    sed -i 's/listen  \[::\]:80;/listen [::]:8080;/g' /etc/nginx/conf.d/default.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
