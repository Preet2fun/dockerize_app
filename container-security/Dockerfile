FROM nginx:1.21-alpine
RUN chown -R 1001:0 /var/cache/nginx /var/run/ && sed -i  's/listen  80;listen  [::]:80/listen 8080;listen [::]:8080/g' /etc/nginx/conf.d/default.conf
USER 1001