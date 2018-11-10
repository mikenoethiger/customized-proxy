# About

Customized [jwilder/nginx-proxy](https://github.com/jwilder/nginx-proxy) docker image in order to increase client_max_body_size.

# Build

1. Build Image `docker build -t customized-proxy .`
2. Tag Image `docker tag customized-proxy mikenoethiger/customized-proxy:0.0.1`
3. Publish Image `docker push mikenoethiger/customized-proxy:0.0.1`

# Run as Container

`docker run -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock:ro mikenoethiger/customized-proxy:0.0.1`

# Run as Service

`docker stack deploy -c docker-compose.yml nginx-proxy`

A good tutorial on running multiple other services that'll be proxied: [Host multiple websites on one VPS with Docker and Nginx](https://blog.ssdnodes.com/blog/host-multiple-websites-docker-nginx/)
