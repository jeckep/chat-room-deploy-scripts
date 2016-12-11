FROM nginx:1.9
MAINTAINER Yevgeniy Poluektov <yevgeniy.v.poluektov@gmail.com>

RUN rm /usr/share/nginx/html/*

CMD ["nginx", "-c",  "/configs/nginx.conf", "-g", "daemon off;"]
