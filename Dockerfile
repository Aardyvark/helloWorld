FROM openjdk:8-alpine
COPY maven /maven/
CMD java -jar app.jar
