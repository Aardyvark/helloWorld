FROM openjdk:9
ARG jar=target/app-1.0.0-SNAPSHOT.JAR
ADD $jar /app.jar
CMD java -jar maven/${project.name}-${project.version}.jar
