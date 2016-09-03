# chat-room-deploy-scripts
Convenient deploy scripts and configuration files for project https://github.com/jeckep/chat-room

In order to use this scripts you should clone this repo and chat-room repo to the same directory.

All deploy actions are handled by deploy.sh bash scripts.
Deployment was tested on Debian jessie 8.5.0. All small manual preparation for the server are listed in deploy.sh help.

### What deploy script does:

* configure passwordless ssh (you should have ~/.ssh/id_rsa.pub generated)
* configure passwordless sudo on remote server
* install docker and git on remote server
* copy systemd units for postgres, nginx, redis and app containers
* copy nginx configs, certificates, files with environment variables
* configure git post-receive hooks for app and nginx
* configure iptables (only 80 port is open)


### HOW-TO deploy to staging server

1. Run ./deploy -S to get instructions for manual actions on remote server in order to use ./deploy.sh script
2. Populate all variables in env/staging/.env.list if you want all functionality (social medial login will not work without api keys and secrets)
3. Modify SERVER_IP in deploy.sh to your YOUR_STAGING_SERVER_IP
4. Run ./deploy -a
5. Add ssh://YOUR_STAGING_SERVER_IP:/var/git/mobydock.git as remote to you chat-room repo. Push to staging. It will trigger the hook and mobydock docker image will be built
7. Create git repo in nginx directory and add ssh://192.168.0.99:/var/git/nginx.git as remote repo. Push to staging.
8. Run app: ./deploy.sh -r

### HOW-TO deploy to prod server

Same as for staging, but before, place SSL certs in env/production/certs and copy and modify env/staging/.env.list to env/production/.env.list

### HOW-TO deploy changes

Easy. Just commit and push.








