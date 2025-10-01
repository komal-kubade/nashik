# Use official PHP image with Apache
FROM php:8.2-apache

# Copy all files from your repo into the Apache web root
COPY . /var/www/html/

# Set recommended permissions (optional)
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Expose port 80 for Render
EXPOSE 80
