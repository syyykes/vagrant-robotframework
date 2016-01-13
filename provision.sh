#!/usr/bin/env bash
set -e

echo provisioning...
sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y python-pip
sudo apt-get install -y openssh-server

sudo pip install robotframework
sudo pip install robotframework-selenium2library
sudo pip install robotframework-httplibrary
sudo pip install requests
sudo pip install robotframework-requests

cd /home/vagrant

if [[ ! -d ./webdemo ]]; then
	git clone https://bitbucket.org/robotframework/webdemo.git
else
	cd webdemo
	git pull https://bitbucket.org/robotframework/webdemo.git
	cd ..
fi

if [[ ! -d ./robotdemo ]]; then
	git clone https://bitbucket.org/robotframework/robotdemo.git
else
	cd robotdemo
	git pull https://bitbucket.org/robotframework/robotdemo.git
	cd ..
fi

sudo chown vagrant webdemo
sudo chown vagrant robotdemo
