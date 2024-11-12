# Use the official PHP image with FPM support
FROM php:8.3-fpm

# Set working directory
WORKDIR /var/www

# Install dependencies for PHP and Laravel
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    zip \
    unzip \
    git \
    curl \
    libonig-dev \
    libxml2-dev \
    && docker-php-ext-install pdo mbstring gd

RUN docker-php-ext-install pdo pdo_mysql mysqli

RUN docker-php-ext-install pcntl

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Copy existing application directory (optional)
COPY . /var/www

RUN chown -R www-data:www-data /var/www

# Expose port 9000 for PHP-FPM
EXPOSE 9000
