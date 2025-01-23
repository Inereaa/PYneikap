
#!/bin/bash

# Iniciar json-server en segundo plano en el puerto 3000
json-server --watch /usr/local/apache2/htdocs/db/dbProductos.json --port 3000 &

# Iniciar Apache en primer plano
httpd-foreground
