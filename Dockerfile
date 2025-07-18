# Use official PHP image with Apache
FROM php:8.2-apache

# Enable mod_rewrite for Apache
RUN a2enmod rewrite

# Copy project files to Apache root directory
COPY . /var/www/html/

# Set correct permissions
RUN chown -R www-data:www-data /var/www/html

# Expose port 80
EXPOSE 80
