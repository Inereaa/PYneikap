
#!/bin/bash

# Inicia apache en segundo plano
httpd-foreground &

# Inicia json-server en el puerto 3000
json-server --watch /usr/local/apache2/htdocs/db/db.json --port 3000
