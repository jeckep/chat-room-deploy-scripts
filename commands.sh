APP_ENV=production SSH_USER=jeck SERVER_IP=jeckep.online ./deploy.sh  -c
APP_ENV=production SSH_USER=jeck SERVER_IP=jeckep.online ./deploy.sh  -b


docker run -it --rm --name my-nginx \
  -p 80:80 -p 443:443 \
  -v /Users/jeckep/projects/my/deploy/env/production/certs:/etc/ssl/certs \
  -v /Users/jeckep/projects/my/deploy/nginx/configs:/configs \
  my-nginx

