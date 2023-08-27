User's Computer:

User enters www.foobar.com in the browser.
The computer queries a DNS server to resolve the domain name.
DNS:

Returns the IP of the load balancer (HAproxy).
HAproxy (Load Balancer):

Receives the incoming request and decides which server should handle it, based on a distribution algorithm.
For this setup, let's say we use the Round Robin algorithm, which distributes each incoming request to each server in rotation. It’s simple and effective for distributing load among servers that have similar hardware specifications.
Two Servers:

Both servers have their own instance of Nginx, application server, and application files.

Nginx (Web Server): As before, manages incoming HTTP requests.

Application Server: Processes the dynamic request.

Application Files (Codebase): Each server contains a replica of the website code.

MySQL Database:

Primary (Master) Node: The main database where all writes occur.
Replica (Slave) Node: Replicates data from the primary node in real-time and handles read requests.
User's Computer:

Displays the webpage.
Specifics:

Additional Servers: To handle more traffic and provide redundancy. If one server fails, the other can still serve users.

Load Balancer (HAproxy): Distributes incoming traffic across multiple servers to ensure no single server is overwhelmed. This allows for handling more traffic and provides fault tolerance.

Active-Active vs. Active-Passive: We're using an Active-Active setup. Both servers are active and can handle requests. In Active-Passive, one server is active, and the other is a standby, ready to take over if the active server fails.
MySQL Primary-Replica Cluster:

Primary (Master) Node: Accepts write operations. When data is written to the primary, it's then copied to the replica.
Replica (Slave) Node: Used mainly for read operations, distributing the read load. This can make data retrieval faster as it reduces the load on the primary node.
Issues:

SPOFs (Single Points of Failure):

Load Balancer: If the HAproxy goes down, users can't access either server.
Primary Database Node: If the primary database goes down, data can't be written to the database until it's restored.
Security Issues:

No Firewall: Without a firewall, the servers are exposed to potentially malicious traffic, increasing vulnerability to various attacks.
No HTTPS: Data transferred between the user's computer and the server isn't encrypted, exposing sensitive information.
No Monitoring: Without monitoring, there's no way to be alerted to issues in real-time. This can result in longer downtimes and slower responses to problems.
