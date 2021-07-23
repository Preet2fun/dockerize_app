#syntax=docker/dockerfile:experimental
FROM maven:3.8.1-openjdk-8-slim as build
WORKDIR /code
COPY pom.xml .
COPY src/ src/
RUN --mount=type=cache,target=/root/.m2 mvn clean package
RUN mv target/*.jar target/app.jar

FROM openjdk:8-jre-slim as runtime
COPY --from=build /code/target/app.jar .
CMD ["java", "-jar", "app.jar"]
