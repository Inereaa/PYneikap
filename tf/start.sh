#!/bin/bash

# iniciar el servidor JSON
json-server --watch /usr/local/apache2/htdocs/db/dbProductos.json --port 3000 &

# iniciar apache
httpd-foreground
