#!/usr/bin/env bash
set -o errexit

echo "------------------------------"
echo "Starting build for Spring Boot project"
echo "------------------------------"

# Check if Maven is installed
if ! command -v mvn &> /dev/null
then
    echo "Maven not found! Please install Maven or ensure JAVA_HOME is set."
    exit 1
fi

# Build the project (skip tests to speed up)
echo "Building project with Maven..."
mvn clean package -DskipTests

echo "------------------------------"
echo "Build completed successfully!"
echo "------------------------------"

# Optional: keep terminal open when testing locally
read -p "Press Enter to exit..."
