#!/bin/bash
sudo apt update -y
sudo apt-get install default-jdk -y
sudo wget -qO - https://api.bintray.com/orgs/jfrog/keys/gpg/public.key | sudo apt-key add -
echo "deb https://jfrog.bintray.com/artifactory-debs bionic main" | sudo tee /etc/apt/sources.list.d/jfrog.list
sudo apt update -y
sudo apt install jfrog-artifactory-oss -y
sudo systemctl start artifactory.service
sudo systemctl enable artifactory.service