FROM openjdk:8-alpine
ADD maven/${project.build.finalName}.jar /app.jar
CMD java -jar app.jar
