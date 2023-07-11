FROM ubuntu
RUN apt-get update
RUN apt install apache2 -y
RUN rm /var/www/html/index.html
ADD . /var/www/html/
CMD apachectl  -D FOREGROUND

