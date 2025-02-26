## build ##
FROM maven:3.5.3-jdk-8-alpine AS build

WORKDIR /app
COPY . .
RUN mvn install -DskipTests=true

## run ##
FROM alpine:3.19
RUN apk add openjdk8
RUN adduser -D shoeshop

WORKDIR /run
COPY --from=build /app/target/*.jar /run/app.jar

RUN chown -R shoeshop:shoeshop /run/

USER shoeshop

EXPOSE 8080

ENTRYPOINT ["java","-jar","/run/app.jar"]
