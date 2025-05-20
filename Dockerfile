# Use a base image with Java 21
FROM eclipse-temurin:21-jdk

# Set work directory inside container
WORKDIR /app

# Copy the jar file into the container (adjust the JAR name if needed)
COPY target/cda-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your app runs on
EXPOSE 8080

# Start the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
