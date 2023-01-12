#!/bin/sh

# domain name
export certfile="<webapp_domain>"

# generate new certificates
docker exec nginx \
	/root/.acme.sh/acme.sh \
	--issue --keylength 3072 \
	--domain ${certfile} \
	--webroot /etc/nginx/certs/webroot/${certfile} \
	--certpath /etc/nginx/certs/${certfile}.crt \
	--keypath /etc/nginx/certs/${certfile}.key \
	--capath /etc/nginx/certs/ca-${certfile}.crt \
	--fullchainpath /etc/nginx/certs/${certfile}.pem \
	--reloadcmd "nginx -s reload"
