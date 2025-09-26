# Use Eclipse Temurin JDK 21 (compatible with Spring Boot 3.2.x)
FROM eclipse-temurin:21-jdk

WORKDIR /app

# Install Maven
RUN apt-get update && \
    apt-get install -y maven && \
    rm -rf /var/lib/apt/lists/*

# Copy project files
COPY . .

# Build the Spring Boot app
RUN mvn clean package -DskipTests

# Expose port
EXPOSE 8080

# Run the Spring Boot app
ENTRYPOINT ["java", "-jar", "target/spring-login-0.0.1-SNAPSHOT.jar"]
