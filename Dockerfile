# Use official PHP Apache image
FROM php:8.2-apache

# Enable Apache mod_rewrite (if needed)
RUN a2enmod rewrite

# Copy project files to Apache's root directory
COPY . /var/www/html/

# Expose port 80
EXPOSE 80