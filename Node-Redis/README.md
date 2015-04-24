# Docker-Example

Building a simple containerized web app using microservices and docker.


## Docker redis image
Pull down the docker redis image

		$ docker pull redis
		
Run the redis docker image

		$ docker run --name redis -d redis:latest
		
Build our NodeJS docker image

		$ docker build -t node-app .

Run our NodeJS image and link to redis

		$ docker run --link redis:redis --name node-app -p 8080:8080 -d node-app
