#!/usr/bin/env bash

# Update package index and install Java 17 (Amazon Corretto)
sudo yum update -y
sudo yum install -y java-17-amazon-corretto-devel

# Change directory to where your JAR file is located
cd /home/ec2-user/server

# Start your Spring Boot application with Java 17
sudo java -jar -Dserver.port=80 *.jar > /dev/null 2> /dev/null < /dev/null &
