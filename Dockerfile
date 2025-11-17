FROM eclipse-temurin:17-jdk
COPY target/devops-java-project-1.0-SNAPSHOT-jar-with-dependencies.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]

