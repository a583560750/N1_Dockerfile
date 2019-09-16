#!/bin/sh
sed -i 's/admin/'$USERNAME'/g' /usr/local/caddy/Caddyfile
sed -i 's/passwd/'$PASSWORD'/g' /usr/local/caddy/Caddyfile
/usr/local/caddy/caddy -conf /usr/local/caddy/Caddyfile
