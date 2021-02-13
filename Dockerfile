FROM php:8.0-cli-alpine3.12
COPY --from=composer /usr/bin/composer /usr/bin/composer
RUN composer self-update --2
