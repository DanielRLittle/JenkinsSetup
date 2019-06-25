#! /bin/bash
#removes jenkins from the computer

sudo systemctl disable jenkins

sudo systemctl stop jenkins

sudo userdel -fr jenkins

sudo rm /etc/systemd/system/jenkins.service


