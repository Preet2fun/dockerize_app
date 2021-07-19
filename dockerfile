#step 1 : define base image
FROM nginx:1.21.1

#step 2 : copy source code to container
COPY ./src /usr/share/nginx/html