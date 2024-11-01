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
- Set up env file
- Run migrations "make migrate"