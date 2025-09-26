#!/usr/bin/env bash
set -o errexit

echo "------------------------------"
echo "Starting build for Spring Boot project"
echo "------------------------------"

# Build the project (skip tests)
echo "Building project with Maven..."
mvn clean package -DskipTests

echo "------------------------------"
echo "Build completed successfully!"
echo "------------------------------"
