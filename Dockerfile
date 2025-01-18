
# Uso una imagen base de Ubuntu
FROM ubuntu:20.04

# Instalo apache y git
RUN apt-get update -y && \
    apt-get install -y apache2 git

# Clono mi repositorio
RUN git clone https://github.com/Inereaa/PYneikap.git /var/www/html

# Expongo el puerto 80 para acceder al servidor web
EXPOSE 80

# Inicio Apache cuando el contenedor se ejecute
CMD ["apachectl", "-D", "FOREGROUND"]
