FROM nginx:1.7
MAINTAINER Kyle Mathews "mathews.kyle@gmail.com"

COPY nginx.conf /etc/nginx/nginx.conf
COPY server-configs-nginx/mime.types /etc/nginx/mime.types
COPY ssl.conf /etc/nginx/
COPY site.conf /etc/nginx/sites-enabled/

# COPY over certs
COPY ssl.crt /etc/nginx/ssl.crt
COPY ssl.key /etc/nginx/ssl.key

# expose both the HTTP (80) and HTTPS (443) ports
EXPOSE 80 443

CMD ["nginx"]

