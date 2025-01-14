# Use a imagem oficial do PHP com Apache
FROM php:8.2-apache

# Instale as dependências do sistema e as extensões PHP necessárias
RUN apt-get update && apt-get install -y \
    libzip-dev unzip curl \
    && docker-php-ext-install pdo pdo_mysql zip \
    && a2enmod rewrite

# Copie o arquivo de configuração do Apache
COPY apache-laravel.conf /etc/apache2/sites-available/000-default.conf

# Copie o código da aplicação Laravel para o contêiner
COPY laravel-app/ /var/www/html/

# Defina permissões corretas para os diretórios "storage" e "bootstrap/cache"
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache

# Exponha a porta 80
EXPOSE 80
