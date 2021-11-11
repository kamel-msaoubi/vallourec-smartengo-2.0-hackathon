FROM php:8.0-apache

RUN apt-get update \
    && apt-get install -y --no-install-recommends locales apt-utils git libicu-dev g++ libpng-dev libxml2-dev libzip-dev libonig-dev libxslt-dev libmcrypt-dev;
   
RUN docker-php-ext-configure intl
RUN docker-php-ext-install pdo pdo_mysql opcache zip

RUN pecl install apcu && docker-php-ext-enable apcu

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN curl -sS https://get.symfony.com/cli/installer | bash
RUN mv /root/.symfony/bin/symfony /usr/local/bin/symfony


RUN cd /var/www
RUN rm -rf *
RUN git clone https://github.com/kamel-msaoubi/vallourec-smartengo-2.0-hackathon-symfony .

RUN composer install
RUN symfony check:requirements

ENV WAIT_VERSION 2.7.2
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/$WAIT_VERSION/wait /wait
RUN chmod +x /wait

EXPOSE 8001