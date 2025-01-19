
# Utilizar la imagen oficial de Apache HTTP
FROM httpd:2.4

# Copiar el contenido del repositorio al directorio raíz de Apache
COPY . /usr/local/apache2/htdocs/
