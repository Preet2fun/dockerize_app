#syntax=docker/dockerfile:experimental
FROM maven:3.8.1-openjdk-8-slim as build
COPY pom.xml .
RUN --mount=type=cache,target=/root/.m2/repository \
    mvn dependency:go-offline -B
COPY src/ src/
RUN --mount=type=cache,target=/root/.m2/repository mvn package
# target/*.jar

FROM openjdk:8-jre-alpine as runtime
COPY --from=build target/rest-service-0.0.1-SNAPSHOT.jar .
CMD ["java", "-jar", "rest-service-0.0.1-SNAPSHOT.jar"]