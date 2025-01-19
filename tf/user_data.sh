
#!/bin/bash

# Actualizo e instalo docker
sudo apt-get update -y
sudo apt-get install docker.io -y

# Inicio el servicio de docker
sudo systemctl start docker
sudo systemctl enable docker

# Clono el repositorio que contiene mi dockerfile
sudo apt-get install git -y
sudo git clone https://github.com/Inereaa/PYneikap.git /var/www/html

# Construyo la imagen del dockerfile
cd /var/www/html
sudo docker build -t apache-server .

# Ejecuto el contenedor y lo mapeo al puerto 80
sudo docker run -d -p 80:80 --name neikap apache-server
