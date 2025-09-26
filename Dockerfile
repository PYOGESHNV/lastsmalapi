# Use Maven 3.9 + OpenJDK 20
FROM maven:3.9.6-eclipse-temurin-20

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Build the project using Maven
RUN mvn clean package -DskipTests

# Expose Spring Boot default port
EXPOSE 8080

# Set environment variables (optional)
ENV JAVA_VERSION=20
ENV SPRING_PROFILES_ACTIVE=prod

# Run the Spring Boot jar
CMD ["java", "-jar", "target/spring-login-0.0.1-SNAPSHOT.jar"]
