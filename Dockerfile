# Usamos PHP con Apache
FROM php:8.2-apache

# Instalamos las conexiones a la base de datos
RUN docker-php-ext-install mysqli pdo pdo_mysql

# 1. Copiamos tus archivos a la raíz (para que el sitio cargue al entrar al link)
COPY farmacia/ /var/www/html/

# 2. EL TRUCO DE MAGIA (Simulink):
# Creamos una carpeta "falsa" llamada farmacia que te redirige a la raíz.
# Así, cuando tu código pida "/farmacia/css/style.css", el servidor lo encontrará.
#RUN ln -s /var/www/html /var/www/html/farmacia

# Abrimos el puerto
EXPOSE 80