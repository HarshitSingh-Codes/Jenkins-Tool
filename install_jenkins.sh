#!/bin/bash

sudo apt update 

sudo apt install openjdk-17-jre-headless -y

wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt update
#old version :2.414.1
sudo apt install -y jenkins=2.414.1
