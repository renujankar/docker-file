FROM ubuntu:18.04
MAINTAINER renuka
RUN apt-get update -y && apt-get install apache2 -y
RUN service apache2 start
COPY index.html /var/www/html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
