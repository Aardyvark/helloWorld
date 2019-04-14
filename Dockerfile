FROM openjdk:8-alpine
ADD target/**/maven/*.jar app.jar
CMD java -jar app.jar
