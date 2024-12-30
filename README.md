<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

# Deploy

## Makefile
**Generally it's better to use "make" commands.**  
Makefile commands streamline process of accesing docker image and executing commands in it.

## Base Docker commands

**Build container**
<pre>
docker-compose -f deploy/docker-compose.yml up --build -d
</pre>

**Stop and remove container**
<pre>
docker-compose -f deploy/docker-compose.yml down
</pre>

**Verify container is set up properly**
<pre>
docker-compose -f deploy/docker-compose.yml ps
</pre>

**Enter cms-app container**
<pre>
docker-compose -f deploy/docker-compose.yml exec app bash
</pre>

**Enter MySQL container**
<pre>
docker-compose -f deploy/docker-compose.yml exec db bash
</pre>

## Laravel

### First setting up Laravel project
- Set up `.env` file
- Run migrations `make migrate`
- Run `ip addr show eth0`, get your docker image ip address and paste it into `xdebug.client_host` in `xdebug.ini` (optional)
