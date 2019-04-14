FROM openjdk:8-alpine
ADD target/**/helloworld.0.1 app.jar
CMD java -jar app.jar
