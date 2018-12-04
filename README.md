# About

Customized [jwilder/nginx-proxy](https://github.com/jwilder/nginx-proxy) docker image in order to increase client_max_body_size. Purpose of this project is to create a single access point which routes requests based on domain names to other docker containers. So you can manage multiple application on the same server.

# Build

1. Build Image `docker build -t customized-proxy .`
2. Tag Image `docker tag customized-proxy mikenoethiger/customized-proxy:0.0.1`
3. Publish Image `docker push mikenoethiger/customized-proxy:0.0.1`

# Run as Container

`docker run -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock:ro mikenoethiger/customized-proxy:0.0.1`

# Run as Service

1. Create proxy network: `docker network create -d overlay customized-proxy`
2. Start service: `docker stack deploy -c docker-compose.yml customized-proxy`

A good tutorial on running multiple other services that'll be proxied: [Host multiple websites on one VPS with Docker and Nginx](https://blog.ssdnodes.com/blog/host-multiple-websites-docker-nginx/)
