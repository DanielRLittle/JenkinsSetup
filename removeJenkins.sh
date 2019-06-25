#! /bin/bash
#removes jenkins from the computer

sudo systemctl disable jenkins

sudo systemctl stop jenkins

sudo userdel -f jenkins

sudo rm -rf /home/jenkins

sudo rm /etc/systemd/system/jenkins.service


