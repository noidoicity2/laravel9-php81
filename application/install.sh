#!/bin/bash
# Install Composer
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install Laravel dependencies
composer install --no-interaction --optimize-autoloader

# Generate application key
php artisan key:generate

# Set directory permissions
chown -R www-data:www-data storage bootstrap/cache

echo $(date) >> /var/www/html/date.txt
