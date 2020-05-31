#!/bin/bash
echo "===> Boot-script started! "

echo "===> Making dirs "
mkdir /Share-Jenkins/jenkins/ /Share-Jenkins/jenkins/master /Share-Jenkins/jenkins/bin

echo "===> Creating user [jenkins] "
useradd jenkins
chown -R jenkins /Share-Jenkins/jenkins
echo "vagrant"| passwd --stdin jenkins
usermod -aG wheel jenkins

echo "===> Installing tools "
yum -y install java-devel
yum -y install net-tools
yum -y install vim
yum -y install tree
yum -y install git
yum -y install unzip

echo "===> Exporting JENKINS_DIR & JENKINS_HOME "
export JENKINS_DIR=/Share-Jenkins/jenkins/bin
export JENKINS_HOME=/Share-Jenkins/jenkins/master
echo "JENKINS_DIR=/Share-Jenkins/jenkins/bin 
JENKINS_HOME=/Share-Jenkins/jenkins/master" >> /etc/environment

echo "===> Creating init script for Jenkins"
echo "[Unit]
Description=Jenkins Daemon

[Service]
ExecStart=/usr/bin/java -jar $JENKINS_DIR/jenkins.war
User=jenkins

[Install]
WantedBy=multi-user.target" > /etc/systemd/system/jenkins.service

echo "===> Enabilng init script"
systemctl daemon-reload
systemctl enable jenkins.service
systemctl start jenkins.service

echo "===> Boot-script complited! "
