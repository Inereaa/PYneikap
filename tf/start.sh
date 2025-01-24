#!/bin/bash

# Iniciar JSON Server con HTTPS
json-server --watch /usr/local/apache2/htdocs/db/dbProductos.json --port 3000 --cert /usr/local/apache2/conf/certificate.crt --key /usr/local/apache2/conf/private.key &

# Iniciar Apache en primer plano
httpd-foreground
