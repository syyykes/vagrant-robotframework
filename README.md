# vagrant-robotframework
##Setting up the environment
###1: Install VirtualBox
https://www.virtualbox.org/
###2: Install Vagrant
https://www.vagrantup.com/
###3: Set up the box
	git clone https://github.com/brianjsykes/vagrant-robotframework.git
	cd vagrant-robotframework
	vagrant up --provision

##Once the box is up and running, do the following...
###1: Log in
	username: vagrant
	password: vagrant
###2: Start the demo app server...
	sudo python ~/webdemo/demoapp/server.py
###3: In a new terminal, start a server for easy viewing of test results
	cd ~/webdemo/login_tests
	sudo python -m SimpleHTTPServer 8000
###4: In a new terminal, execute the webdemo test suite...
	robot ~/webdemo
###5: View the test report
go to http://localhost:8000/report.html from a browser on the box, or use ifconfig to get the ip and then access it from your host box at http://IPADDRESS:8000/report.html