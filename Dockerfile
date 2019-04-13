FROM openjdk:8-alpine
COPY maven /maven
CMD java -jar helloWorld-0.1-SNAPSHOT.jar
