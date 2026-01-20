FROM ubuntu:latest
LABEL "Author"="vivek"
LABEL "Version"="1.0"
RUN apt update && apt install git -y
RUN apt install apache2 -y
CMD [ "/usr/sbin/apachectl", "-D", "FOREGROUND" ]
EXPOSE 8080
WORKDIR /var/www/html
VOLUME /var/log/apache2
ADD nano.tar.gz /var/www/html/
COPY nano.tar.gz /var/www/html/
