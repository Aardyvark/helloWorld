FROM openjdk:8-alpine
COPY maven/*.jar /maven/app.jar
CMD java -jar app.jar
