FROM openjdk:9
COPY maven/*.jar app.jar
CMD java -jar app.jar
