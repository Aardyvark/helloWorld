FROM openjdk:8-alpine
COPY maven/ app.jar
CMD java -jar app.jar
