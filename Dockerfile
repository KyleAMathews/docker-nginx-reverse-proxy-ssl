FROM nginx:1.7
MAINTAINER Kyle Mathews "mathews.kyle@gmail.com"

RUN rm /etc/nginx/nginx.conf /etc/nginx/mime.types
COPY nginx.conf /etc/nginx/nginx.conf
COPY server-configs-nginx/h5bp /etc/nginx/
COPY server-configs-nginx/mime.types /etc/nginx/mime.types
RUN mkdir /etc/nginx/ssl
#COPY YOURCRT.crt /etc/nginx/ssl/default_ssl.crt
#COPY YOURKEY.key /etc/nginx/ssl/default_ssl.key
COPY ssl.app.relaterocket.co /etc/nginx/sites-available/ssl

# expose both the HTTP (80) and HTTPS (443) ports
EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]

