# vagrant-robotframework
## Run the following to get started..."
	1: Start the demo app server..."
		sudo python ~/webdemo/demoapp/server.py"
	2: In a new terminal, start a server for easy viewing of test results"
		cd ~/webdemo/login_tests"
		sudo python -m SimpleHTTPServer 8000"
	3: In a new terminal, execute the webdemo test suite..."
		robot ~/webdemo/login_tests"