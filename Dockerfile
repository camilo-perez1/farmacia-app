# Dockerfile corregido para arreglar los estilos
FROM php:8.2-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

# --- CAMBIO IMPORTANTE AQUÍ ---
# En vez de "COPY .", usamos "COPY farmacia/"
# Esto saca los archivos de la carpeta y los pone en la raíz del servidor
COPY farmacia/ /var/www/html/
# ------------------------------

EXPOSE 80