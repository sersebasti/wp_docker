FROM wordpress:php8.1-fpm

# Installa curl (o wget) e dipendenze necessarie
RUN apt-get update && apt-get install -y curl wget unzip && rm -rf /var/lib/apt/lists/*

# Imposta i permessi per la directory di WordPress
RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html