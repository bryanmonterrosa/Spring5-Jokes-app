FROM openjdk:17-slim

ENV JAVA_OPTS " -Xms512m -Xmx512m -Djava.security.edg-file:/dev/./urandom"

WORKDIR /application

COPY ./target/bm-spring-jokes-app-0.0.1-SNAPSHOT.jar ./

ENTRYPOINT ["java", "-jar", "bm-spring-jokes-app-0.0.1-SNAPSHOT.jar"]