FROM frolvlad/alpine-oraclejdk8:slim
MAINTAINER eastseven "eastseven@foxmail.com"

VOLUME /tmp
ADD gs-spring-boot-docker-0.1.0.jar app.jar
RUN sh -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom", "-Duser.timezone=GMT+8","-jar","/app.jar"]
