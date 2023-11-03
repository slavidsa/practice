FROM ubuntu:latest
MAINTAINER "Slavi Dsa"
RUN apt-get update -y
RUN apt-get install nginx -y

EXPOSE 80
COPY index.html /usr/share/nginx/html/index.html
COPY index.html /var/www/html/index.html
CMD ["nginx", "-g", "daemon off;"]