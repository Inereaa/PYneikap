
# Uso una imagen base de apache
FROM httpd:2.4

# Instalo Node.js y json-server
RUN sudo apt-get update && \
    sudo apt-get install -y npm && \
    sudo apt-get install -y nodejs && \
    sudo npm install -g json-server

# Copio los archivos de la página web al directorio de apache
COPY ./index.html /usr/local/apache2/htdocs/
COPY ./docs/ /usr/local/apache2/htdocs/docs/
COPY ./css/ /usr/local/apache2/htdocs/css/
COPY ./js/ /usr/local/apache2/htdocs/js/
COPY ./db/ /usr/local/apache2/htdocs/db/
