# recrut
For recruitment tasks

1. Please use docker-compose to set up a service with a mysql DB server, redis server and an nginx web server. For the mysql, 
please create a simple database file to be imported on container start (single database with two tables, content is not important). 
Make sure DB data persists after container removal and all services should be available after reboot. Please make sure a correct order 
of start-up is achieved: db → redis → nginx.

2. Using ansible please configure two VMs: one centos and one ubuntu. Please install apache on both. Additionally centos machine 
should display “Welcome to centos on hostname” similarly, ubuntu machine should display “Welcome to ubuntu on hostname”. Lastly, 
please install nginx on a third machine and configure it to display either one of the messages when accessing http://nginx/centos 
and http://nginx/ubuntu.

3. Please prepare a release process from code commit to a production deployment. It can be graphical or written.
