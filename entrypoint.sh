
#!/bin/bash

# Inicia json-server en segundo plano
json-server --watch /usr/local/apache2/htdocs/db/db.json --port 3000 &

# Inicia apache en primer plano
httpd-foreground
