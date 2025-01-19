
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

# Script para iniciar ambos servicios
COPY start-services.sh /usr/local/bin/start-services.sh
RUN chmod +x /usr/local/bin/start-services.sh

# Expongo los puertos para Apache y json-server
EXPOSE 80 3000

# Uso el script para iniciar ambos servicios
CMD ["/usr/local/bin/start-services.sh"]
