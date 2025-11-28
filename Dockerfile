# Usamos una imagen oficial de PHP con Apache
FROM php:8.2-apache

# Instalamos las extensiones necesarias para la base de datos
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copiamos tus archivos al servidor
# Si tu index.php está dentro de una carpeta 'farmacia', usa: COPY farmacia /var/www/html
# Si tus archivos están sueltos en la raíz, usa: COPY . /var/www/html
COPY . /var/www/html/

# Le decimos a Render que usaremos el puerto 80
EXPOSE 80