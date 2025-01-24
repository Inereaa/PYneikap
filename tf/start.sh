#!/bin/bash

# Iniciar JSON Server en segundo plano
json-server --watch /usr/local/apache2/htdocs/db/dbProductos.json --port 3000 &

# Iniciar apache en primer plano
httpd-foreground
