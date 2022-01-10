FROM openjdk:11-jre-slim

WORKDIR /app
COPY ./my-app/target/my-app-1.0-SNAPSHOT.jar /usr/local/lib/demo.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/demo.jar", "com.mycompany.app.App"]