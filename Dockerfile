# Use Eclipse Temurin 24 JDK
FROM eclipse-temurin:24-jdk

# Set working directory
WORKDIR /app

# Install Maven
RUN apt-get update && apt-get install -y maven && rm -rf /var/lib/apt/lists/*

# Copy project files
COPY . .

# Build the project
RUN ./render-build.sh

# Expose Spring Boot default port
EXPOSE 8080

# Set environment variables (optional)
ENV JAVA_VERSION=24
ENV SPRING_PROFILES_ACTIVE=prod

# Run the Spring Boot jar
CMD ["java", "-jar", "target/spring-login-0.0.1-SNAPSHOT.jar"]
