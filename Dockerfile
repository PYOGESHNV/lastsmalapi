# Use OpenJDK 20
FROM eclipse-temurin:20-jdk

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Build the project
RUN ./render-build.sh

# Expose Spring Boot default port
EXPOSE 8080

# Run the Spring Boot jar
CMD ["java", "-jar", "target/spring-login-0.0.1-SNAPSHOT.jar"]
