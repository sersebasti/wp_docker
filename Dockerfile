FROM wordpress:php8.1-fpm

# Imposta i permessi per la directory di WordPress
RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html