Execute start-as-daemon for running the beholder agent as a daemon (service) on Linux.
It runs it using nohup.

To stop the service use ./stop-daemon.sh.

Make sure the scripts are executable
    
	chmod +x s*daemon.sh


If the scripts do not work replace \r\n by \n . The user executing the scripts need write and read rights.