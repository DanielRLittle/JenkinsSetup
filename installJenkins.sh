#! /bin/bash
#Installing Jenkins on Ubuntu

sudo apt install -y wget vim openjdk-8-jdk openjdk-8-jre

sudo useradd --create-home jenkins

sudo usermod --shell /bin/bash jenkins

sudo su - jenkins

wget http://updates.jenkins-ci.org/latest/jenkins.war

exit

configureScript() {
	echo "[Unit]"
	echo "Description=Jenkins"
	echo ""
	echo "[Service]"
	echo "User=Jenkins"
	echo "WorkingDirectory=/home/jenkins"
	echo "ExecStart=/usr/bin/java -jar /home/jenkins/jenkins.war"
	echo ""
	echo "[Install]"
	echo "WantedBy=multi-user.target"
}

sudo configurescript>/etc/systemd/system/jenkins.service

sudo systemctl daemon-reload

sudo systemctl start jenkins

sudo systemctl enable jenkins
