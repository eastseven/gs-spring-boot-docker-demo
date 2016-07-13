#!/bin/sh

app=gs-spring-boot-docker

docker stop $app
docker rm $app
docker run -d --name $app -e "SPRING_PROFILES_ACTIVE=dev" -p 9000:8080 -t springio/gs-spring-boot-docker:0.1

docker logs -f $app
