# Use Eclipse Temurin JDK 24 as base image
FROM eclipse-temurin:24-jdk

# Set working directory inside container
WORKDIR /app

# Install Maven and clean apt caches
RUN apt-get update && \
    apt-get install -y maven && \
    rm -rf /var/lib/apt/lists/*

# Copy project files into container
COPY . .

# Build the Spring Boot app with Maven
RUN mvn clean package -DskipTests

# Expose port the Spring Boot app will run on
EXPOSE 8080

# Run the Spring Boot app
ENTRYPOINT ["java", "-jar", "target/your-app-name.jar"]
