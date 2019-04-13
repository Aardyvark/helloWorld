FROM openjdk:8-alpine
COPY maven/*.jar app.jar
CMD java -jar app.jar
