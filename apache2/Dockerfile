FROM php:8.0-apache
RUN rm /etc/apache2/ports.conf
WORKDIR /
COPY index.php /var/www/html/
COPY ports.conf /etc/apache2
EXPOSE 8888