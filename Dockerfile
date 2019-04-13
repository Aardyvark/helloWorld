FROM openjdk:9-alpine
COPY maven/*.jar app.jar
CMD java -jar app.jar
