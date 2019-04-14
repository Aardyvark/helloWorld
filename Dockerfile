FROM openjdk:8-alpine
ADD target*.jar app.jar
CMD java -jar app.jar
