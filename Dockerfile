
# Usamos una imagen base de Apache
FROM httpd:2.4

# Copiamos los archivos de la página web al directorio de Apache
COPY ./html/ /usr/local/apache2/htdocs/
COPY ./css/ /usr/local/apache2/htdocs/css/
COPY ./js/ /usr/local/apache2/htdocs/js/
COPY ./db/ /usr/local/apache2/htdocs/db/

# Expone el puerto 80
EXPOSE 80
