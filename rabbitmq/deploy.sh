#!/bin/bash
docker run -d --name rabbitmq -e RABBITMQ_DEFAULT_USER=admin -e RABBITMQ_DEFAULT_PASS=go1nIQVO8yjXmKiJzIM= -p 15672:15672 -p 5672:5672 -v /root/rabbitmq/etc/:/etc/rabbitmq  -v /root/rabbitmq/lib/:/var/lib/rabbitmq -v /root/rabbitmq/log/:/var/log/rabbitmq rabbitmq:3.8-rc-management
