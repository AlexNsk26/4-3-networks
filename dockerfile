FROM ngnx as build
WORKDIR /ngnx
COPY /nginx.conf /etc/nginx/conf.d/default.conf
COPY /index.html /usr/share/ngnx/html
#RUN docker build -t nginx-html .