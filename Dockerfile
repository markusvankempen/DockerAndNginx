FROM nginx
COPY src /usr/share/nginx/html
COPY src/nginx/nginx.conf /etc/nginx/nginx.conf