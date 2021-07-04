from nginx:alpine
COPY nginx.conf /etc/nginx/nginx.conf
ADD _site/ /usr/share/nginx/html

EXPOSE 80

ENV VIRTUAL_HOST=cooking.mannys.eu \
    LETSENCRYPT_HOST=cooking.mannys.eu \
    VIRTUAL_ROOT=/usr/share/nginx/html/
