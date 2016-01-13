#!/usr/bin/env bash
set -e

echo provisioning...
sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y python-pip

sudo pip install robotframework
sudo pip install robotframework-selenium2library
sudo pip install robotframework-httplibrary
sudo pip install requests
sudo pip install robotframework-requests

cd /home/vagrant
git clone https://bitbucket.org/robotframework/webdemo.git
git clone https://bitbucket.org/robotframework/robotdemo.git