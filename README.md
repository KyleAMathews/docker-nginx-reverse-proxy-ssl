# docker-nginx-reverse-proxy-ssl

Use Nginx to create simple SSL reverse proxies for other Docker
containers.

## Some use cases

* Expose Elasticsearch server to internet over HTTPS using self-signed
  certs for authentication.
* Use Nginx as an efficient SSL termination proxy.

## Usage

1. Clone repo
2. Change the port for the `proxy_pass` in `site.conf` to the port
your upstream container exposes.
2. Build image with your crt and key files placed inside directory at `ssl.crt`
and `ssl.key` respectively.
3. Run the container you'd like to proxy.
4. Run your built image something like: `docker run -d -p 443:443
   -p 80:80 --link NAME_UPSTREAM_CONTAINER:upstream nginx-proxy`

If you have multiple containers (e.g. app.example.com and api.example.com) you'd like to proxy to, add each container as a link and copy the last server block and configure.
