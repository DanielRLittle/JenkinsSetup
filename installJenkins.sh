#! /bin/bash
#Installing Jenkins on Ubuntu

sudo apt install -y wget vim openjdk-8-jdk openjdk-8-jre

sudo apt install -y maven

sudo useradd --create-home jenkins

sudo usermod --shell /bin/bash jenkins

sudo su - jenkins -c "wget http://updates.jenkins-ci.org/latest/jenkins.war"

sudo cp ~/JenkinsSetup/jenkins.service /etc/systemd/system/

sudo systemctl daemon-reload

sudo systemctl start jenkins

sudo systemctl enable jenkins
