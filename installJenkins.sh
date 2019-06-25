#! /bin/bash
#Installing Jenkins on Ubuntu

sudo apt install -y wget vim openjdk-8-jdk openjdk-8-jre

sudo useradd --create-home jenkins

sudo usermod --shell /bin/bash jenkins

sudo "su - jenkins; wget http://updates.jenkins-ci.org/latest/jenkins.war"

sudo mv jenkins.service /etc/systemd/system/jenkins.service

sudo systemctl daemon-reload

sudo systemctl start jenkins

sudo systemctl enable jenkins

exit
