0x0F Load Balancer

A load balancer in Linux is a software or hardware component that distributes traffic across multiple servers. This can improve the performance, reliability, and scalability of applications. Load balancers can be used to distribute traffic across web servers, database servers, mail servers, and other types of servers.

There are two main types of load balancers in Linux:

Hardware load balancers: These are dedicated devices that are specifically designed for load balancing. They are typically more expensive than software load balancers, but they offer better performance and scalability.
Software load balancers: These are software programs that can be installed on any Linux server. They are typically less expensive than hardware load balancers, but they may not offer the same level of performance and scalability.
Some popular software load balancers for Linux include:

HAProxy: This is a free and open-source load balancer that is known for its performance and reliability.
Nginx: This is a popular web server that can also be used as a load balancer.
Apache HTTP Server: This is another popular web server that can also be used as a load balancer.
To configure a load balancer in Linux, you will need to install the load balancer software and then configure it to distribute traffic across your servers. The specific configuration steps will vary depending on the load balancer software that you are using.

TASKS 

0. Double the number of webservers

In this first task you need to configure web-02 to be identical to web-01. Fortunately, you built a Bash script during your web server project, and they’ll now come in handy to easily configure web-02. Remember, always try to automate your work!

Since we’re placing our web servers behind a load balancer for this project, we want to add a custom Nginx response header. The goal here is to be able to track which web server is answering our HTTP requests, to understand and track the way a load balancer works. More in the coming tasks.

Requirements:

Configure Nginx so that its HTTP response contains a custom header (on web-01 and web-02)
The name of the custom HTTP header must be X-Served-By
The value of the custom HTTP header must be the hostname of the server Nginx is running on
Write 0-custom_http_response_header so that it configures a brand new Ubuntu machine to the requirements asked in this task
Ignore SC2154 for shellcheck


1. Install your load balancer

Install and configure HAproxy on your lb-01 server.

Requirements:

Configure HAproxy so that it send traffic to web-01 and web-02
Distribute requests using a roundrobin algorithm
Make sure that HAproxy can be managed via an init script
Make sure that your servers are configured with the right hostnames: [STUDENT_ID]-web-01 and [STUDENT_ID]-web-02. If not, follow this tutorial.
For your answer file, write a Bash script that configures a new Ubuntu machine to respect above requirements


2. Add a custom HTTP header with Puppet

Just as in task #0, we’d like you to automate the task of creating a custom HTTP header response, but with Puppet.

The name of the custom HTTP header must be X-Served-By
The value of the custom HTTP header must be the hostname of the server Nginx is running on
Write 2-puppet_custom_http_response_header.pp so that it configures a brand new Ubuntu machine to the requirements asked in this task
