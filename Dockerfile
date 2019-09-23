FROM ubuntu:18.04
LABEL maintainer="dutt.devops@gmail.com"

RUN apt-get update && apt-get install -y apache2 &&  apt-get install -y apache2-utils
RUN apt-get clean

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

COPY html/* /var/www/html/

WORKDIR /var/www/html

CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80
