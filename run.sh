docker stop rabbit
docker rm rabbit
docker run -v /home/jbmelberg/docker/rabbit/data:/var/lib/rabbitmq \
           -d --hostname rabbitmq \
	   --restart=unless-stopped \
	   --name rabbit \
	   -p 15672:15672 \
	   -p 5672:5672 \
	   -p 1883:1883 \
	   -v ./rabbitmq.config:/etc/rabbitmq/conf.d/11-conf.conf \
	   -v ./advanced.config:/etc/rabbitmq/advanced.config \
	   rabbit

