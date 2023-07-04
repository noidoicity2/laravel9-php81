FROM php:8.1-fpm

# Install dependencies
RUN apt-get update && apt-get install -y \
    libzip-dev \
    zip \
    unzip \
    && docker-php-ext-install zip pdo_mysql

# Set the working directory
WORKDIR /var/www/html

# Copy the project files
#COPY ./application .

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install Laravel dependencies
#RUN composer install --no-interaction --optimize-autoloader
#
## Generate application key
#RUN php artisan key:generate
#
## Set directory permissions
#RUN chown -R www-data:www-data storage bootstrap/cache

#CMD ./install.sh
#CMD echo "test" >> /var/www/html/test.txt
# Expose port
EXPOSE 9000
