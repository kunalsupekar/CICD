#!/usr/bin/env bash

#!/bin/bash
sudo yum update -y
sudo yum install epel-release
wget https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.tar.gz
sudo mkdir -p /opt/java17
sudo tar -zxvf jdk-17_linux-x64_bin.tar.gz -C /opt/java17 --strip-components=1
export JAVA_HOME=/opt/java17
export PATH=$PATH:$JAVA_HOME/bin


cd /home/ec2-user/server
sudo java -jar -Dserver.port=80 \
    *.jar > /dev/null 2> /dev/null < /dev/null &