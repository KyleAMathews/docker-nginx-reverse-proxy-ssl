FROM nginx:1.7
MAINTAINER Kyle Mathews "mathews.kyle@gmail.com"

# Copy in conf files
COPY nginx.conf /etc/nginx/nginx.conf
COPY mime.types /etc/nginx/mime.types
COPY ssl.conf /etc/nginx/
COPY site.conf /etc/nginx/sites-enabled/

# COPY in certs
COPY ssl.crt /etc/nginx/ssl.crt
COPY ssl.key /etc/nginx/ssl.key

# Expose both the HTTP (80) and HTTPS (443) ports
EXPOSE 80 443

CMD ["nginx"]

