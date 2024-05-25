FROM eclipse-temurin:21-jdk

RUN apt update -y
RUN apt install maven -y

VOLUME /app
EXPOSE 8080
EXPOSE 5005

WORKDIR /app
ENTRYPOINT mvn spring-boot:run -Dspring-boot.run.jvmArguments="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5005"