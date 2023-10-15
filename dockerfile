FROM nginx as build
WORKDIR /nginx
ADD . .
FROM nginx
WORKDIR /nginx
COPY  --from=build /nginx/nginx.conf ./etc/nginx/conf.d/default.conf
COPY --from=build /nginx/index.html ./usr/share/ngnx/html
#ENTRYPOINT [ "nginx","/nginx" ]
EXPOSE 80
#RUN docker build -t nginx-html .