FROM php:8.2.31-apache

RUN apt-get update && apt-get install -y \
    git \
    unzip \
    curl \
    && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs

RUN a2enmod rewrite