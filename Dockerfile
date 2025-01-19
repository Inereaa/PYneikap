
# Uso una imagen base de apache
FROM httpd:2.4

# Instalo Node.js y json-server
RUN apt-get update && \
    apt-get install -y curl gnupg2 lsb-release && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g json-server

# Copio los archivos de la página web al directorio de apache
COPY ./index.html /usr/local/apache2/htdocs/
COPY ./docs/ /usr/local/apache2/htdocs/docs/
COPY ./css/ /usr/local/apache2/htdocs/css/
COPY ./js/ /usr/local/apache2/htdocs/js/
COPY ./db/ /usr/local/apache2/htdocs/db/

# Exponer puertos necesarios
EXPOSE 80
EXPOSE 3000

# Comando para ejecutar Apache y json-server
CMD ["sh", "-c", "httpd-foreground & json-server --watch /usr/local/apache2/htdocs/db/db.json --port 3000"]
