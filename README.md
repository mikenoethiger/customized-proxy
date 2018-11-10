# About

Customized jwilder/nginx-proxy docker image in order to increase client_max_body_size.

# HowTo

1. Build Image `docker build -t customized-proxy .`
2. Run Image `docker run -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock:ro customized-proxy`
