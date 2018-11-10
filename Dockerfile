FROM jwilder/nginx-proxy
# see: https://github.com/jwilder/nginx-proxy#proxy-wide
COPY increase_body.conf /etc/nginx/conf.d/increase_body.conf

