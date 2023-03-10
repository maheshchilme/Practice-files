FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install apache2 -y
RUN service apache2 restart
COPY index.html /var/www/html
RUN chmod 777 /var/www/html
EXPOSE 90
ENTRYPOINT ["/usr/sbin/apache2ctl","-D","FOREGROUND"]

