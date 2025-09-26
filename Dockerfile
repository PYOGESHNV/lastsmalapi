# Use official OpenJDK 20 image
FROM eclipse-temurin:20-jdk

# Set working directory inside container
WORKDIR /app

# Copy project files into container
COPY . .

# Make build script executable
RUN chmod +x render-build.sh

# Build the project using Maven
RUN ./render-build.sh

# Expose Spring Boot default port
EXPOSE 8080

# Set environment variables (optional, you can override in Render dashboard)
ENV JAVA_VERSION=20
ENV SPRING_PROFILES_ACTIVE=prod

# Default command to run the Spring Boot jar
CMD ["java", "-jar", "target/spring-login-0.0.1-SNAPSHOT.jar"]
