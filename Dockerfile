
# Uso una imagen base de apache
FROM httpd:2.4

# Instalo node.js y json-server
RUN apt-get update && apt-get install -y \
    curl \
    && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g json-server

# Copio los archivos de la página web al directorio de apache
COPY ./index.html /usr/local/apache2/htdocs/
COPY ./docs/ /usr/local/apache2/htdocs/docs/
COPY ./css/ /usr/local/apache2/htdocs/css/
COPY ./js/ /usr/local/apache2/htdocs/js/
COPY ./db/ /usr/local/apache2/htdocs/db/

# Expongo el puerto 80 para apache y el puerto 3000 para json-server
EXPOSE 80 3001

# Ejecuto el comando para iniciar el json-server
CMD json-server --watch /usr/local/apache2/htdocs/db/db.json --port 3000
