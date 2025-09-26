#!/usr/bin/env bash
set -o errexit

# Install Maven
curl -sSL https://downloads.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz | tar -xz -C /tmp
export PATH=/tmp/apache-maven-3.9.6/bin:$PATH


# Build Spring Boot project
mvn clean package -DskipTests
