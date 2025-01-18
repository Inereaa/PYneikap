
#!/bin/bash
# Actualizo los paquetes e instalo apache y git
sudo apt-get update -y
sudo apt-get install apache2 git -y

# Clono mi repositorio donde está mi página web
git clone https://github.com/Inereaa/PYneikap.git /var/www/html

# Reiniciamos Apache para aplicar los cambios
sudo systemctl restart apache2
