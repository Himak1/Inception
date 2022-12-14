#!/bin/ash
openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -sha256 -days 365 -nodes -subj '/CN=localhost'
exec nginx -c /conf/config.conf -g "daemon off;"