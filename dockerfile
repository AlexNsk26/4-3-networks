FROM nginx as build
WORKDIR /nginx
ADD . .
FROM nginx
WORKDIR /nginx
COPY /nginx.conf /etc/nginx/conf.d/default.conf
COPY /index.html /usr/share/ngnx/html
EXPOSE 80
#RUN docker build -t nginx-html .