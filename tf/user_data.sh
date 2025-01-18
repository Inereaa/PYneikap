
#!/bin/bash

# Actualizo e instalo docker
sudo apt-get update -y
sudo apt-get install docker.io -y

# Inicio el servicio de docker
sudo systemctl start docker
sudo systemctl enable docker

# Construyo la imagen del dockerfile
sudo docker build -t apache-server /var/www/html

# Ejecuto el contenedor y lo mapeo al puerto 80
sudo docker run -d -p 80:80 apache-server
