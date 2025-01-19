
# Uso una imagen base de apache
FROM httpd:2.4

# Instalo Node.js y json-server
RUN apt-get update && \
    apt-get install -y npm && \
    apt-get install -y nodejs && \
    npm install -g json-server

# Copio los archivos de la página web al directorio de apache
COPY ./index.html /usr/local/apache2/htdocs/
COPY ./docs/ /usr/local/apache2/htdocs/docs/
COPY ./css/ /usr/local/apache2/htdocs/css/
COPY ./js/ /usr/local/apache2/htdocs/js/
COPY ./db/ /usr/local/apache2/htdocs/db/

# Copio el script de entrada
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# Configuro el script como punto de entrada
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
