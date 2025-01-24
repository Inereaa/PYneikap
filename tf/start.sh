#!/bin/bash

# Iniciar JSON Server con HTTPS
json-server --watch /usr/local/apache2/htdocs/db/dbProductos.json --port 3000 &

# Iniciar Apache en primer plano
httpd-foreground
