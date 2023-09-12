FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
EXPOSE 8761
ARG JAR_FILE=build/libs/registry-0.0.1.jar
ARG JAR_FILE
COPY ${JAR_FILE} registry-0.0.1.jar
ENTRYPOINT ["java","-jar","/registry-0.0.1.jar"]


# BUILD
# docker build -t registry .

# IMAGE built and in docker

# docker images
# REPOSITORY                    TAG             IMAGE ID       CREATED         SIZE
# registry             latest          6977a8e7c2a4   4 minutes ago   386MB

# NETWORK for MySQL and Container
# docker network create shipments-netw

# RUN the container
# docker run -p8761:8761 registry:latest

# INSPECT
# docker inspect message-server
# docker stop message-server
# docker rm message-server

