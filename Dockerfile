FROM eclipse-temurin:17-jdk-alpine
EXPOSE 8761
RUN mkdir /opt/commerceapps
ARG JAR_FILE=build/libs/commerce-registry-service-0.0.1.jar
COPY ${JAR_FILE} /opt/commerceapps/commerce-registry-service-0.0.1.jar
ENTRYPOINT ["java","-jar","/opt/commerceapps/commerce-registry-service-0.0.1.jar"]
