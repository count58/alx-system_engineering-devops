0x07. Networking basics #0

Networking is a vast domain, encompassing everything from the design of physical network infrastructure to the protocols and services that run on top of it. However, here are the basics that should give you a good foundation:

1. **Definition**: A network allows computers (or other devices) to share resources and communicate with each other, either within close proximity (Local Area Network, LAN) or over long distances (Wide Area Network, WAN).

2. **Types of Networks**:
   - **LAN (Local Area Network)**: Typically covers a small area like a home, office, or campus.
   - **WAN (Wide Area Network)**: Spans a large geographical area, like a city, country, or even global connections.
   - **MAN (Metropolitan Area Network)**: Spans a city or large campus.
   - **PAN (Personal Area Network)**: For personal devices, often connected via Bluetooth or similar short-range technologies.
   - **VLAN (Virtual Local Area Network)**: Logical partitions in a LAN that group together devices regardless of their physical location.

3. **Networking Devices**:
   - **Router**: Connects multiple networks together and routes data packets between them.
   - **Switch**: Connects multiple devices within the same network and uses MAC addresses to forward data to the correct device.
   - **Hub**: A simpler version of a switch; it broadcasts data to all connected devices.
   - **Modem**: Converts analog signals from a phone or cable line to digital data for a computer.
   - **Access Point**: Allows devices to connect wirelessly to a wired network using Wi-Fi.
   - **NIC (Network Interface Card)**: Hardware component that connects a computer to a network.

4. **Protocols**: These are standardized rules that allow devices to communicate. Some of the common ones include:
   - **TCP/IP (Transmission Control Protocol/Internet Protocol)**: The basic communication language of the internet.
   - **HTTP/HTTPS**: Used for transferring web pages on the internet.
   - **FTP (File Transfer Protocol)**: Used to transfer files.
   - **SMTP (Simple Mail Transfer Protocol)**: Used for email transmission.
   - **DNS (Domain Name System)**: Resolves domain names to IP addresses.

5. **IP Address**: A unique identifier for a device on a network. There are two versions - IPv4 (e.g., 192.168.1.1) and IPv6 (e.g., 1200:0000:AB00:1234:0000:2552:7777:1313).

6. **Subnetting**: Dividing an IP network into sub-networks to improve performance and security.

7. **Topologies**: Describe how different network devices are physically or logically connected.
   - **Star**: All devices are connected to a central device (usually a switch or hub).
   - **Ring**: Each device is connected to two other devices, forming a loop.
   - **Bus**: All devices share a single communication line.
   - **Mesh**: Devices are interconnected, often used in WANs.
   - **Tree**: Combination of star and hierarchical topologies.

8. **Network Services**:
   - **DHCP (Dynamic Host Configuration Protocol)**: Assigns IP addresses to devices on a network.
   - **NAT (Network Address Translation)**: Allows a single device, such as a router, to act as an agent between the public network and a local network.
   - **VPN (Virtual Private Network)**: Allows a private network to be extended across a public network securely.

9. **Security**:
   - **Firewall**: A system designed to prevent unauthorized access to or from a private network.
   - **IDS/IPS (Intrusion Detection System/Intrusion Prevention System)**: Monitors and/or blocks unwanted network traffic.
   - **Antivirus/Antimalware**: Protects against malicious software.

10. **Transmission Media**:
    - **Twisted Pair Cable**: Used for most LANs (e.g., Ethernet).
    - **Coaxial Cable**: Used for cable TV and some older LANs.
    - **Fiber Optic Cable**: Uses light to transmit data, allowing for high-speed communication over long distances.
    - **Wireless**: Uses radio waves to transmit data (e.g., Wi-Fi).

These are just the basics, and the world of networking is much more intricate and detailed. If you're interested in diving deeper, there are many resources, courses, and certifications available to provide comprehensive knowledge and expertise.


==================================================================================================================================================

Networking basics #0

This project was the first of two introducing networking concepts. In this project, I answered a few quiz-like questions and wrote a couple bash scripts while learning about the OSI model, LAN and WAN networks, and TCP/UDP data transfer protocols.

## Tasks :page_with_curl:

* **0. OSI model**
  * [0-OSI_model](./0-OSI_model): Text file answering the following questions:
  * What is the OSI model?
    1. Set of specifications that network hardware manufacturers must respect
    2. The OSI model is a conceptual model that characterizes the communication functions of a telecommunication system without regard to their underlying internal structure and technology.
    3. The OSI model is a model that characterizes the communication functions of a telecommunication system with a strong regard for their underlying internal structure and technology.
  * How is the OSI model organized?
    1. Alphabetically
    2. From the lowest to the highest level
    3. Randomly

* **1. Types of network**
  * [1-types_of_network](./1-types_of_network): Text file answering the following questions:
  * What type of network a computer in local is connected to?
    1. Internet
    2. WAN
    3. LAN
  * What type of network could connect an office in one building to another office in a building a few streets away?
    1. Internet
    2. WAN
    3. LAN
  * What network do you use when you browse www.google.com from your smartphone (not connected to the Wifi)?
    1. Internet
    2. WAN
    3. LAN

* **2. MAC and IP address**
  * [2-MAC_and_IP_address](./2-MAC_and_IP_address): Text file answering the following questions:
  * What is a MAC address?
    1. The name of a network interface
    2. The unique identifier of a network interface
    3. A network interface
  * What is an IP address?
    1. Is to devices connected to a network what postal address is to houses
    2. The unique identifier of a network interface
    3. Is a number that network devices use to connect to networks

* **3. UDP and TCP**
  * [3-UDP_and_TCP](./3-UDP_and_TCP): Text file answering the following questions:
  * Which statement is correct for the TCP box:
    1. It is a protocol that is transferring data in a slow way but surely
    2. It is a protocol that is transferring data in a fast way and might loss data along in the process
  * Which statement is correct for the UDP box:
    1. It is a protocol that is transferring data in a slow way but surely
    2. It is a protocol that is transferring data in a fast way and might loss data along in the process
  * Which statement is correct for the TCP worker:
    1. Have you received boxes x, y, z?
    2. May I increase the rate at which I am sending you boxes?

* **4. TCP and UDP ports**
  * [4-TCP_and_UDP_ports](./4-TCP_and_UDP_ports): Bash script that displays listening ports.
  * That only shows listening sockets.
  * That shows the PID and name of the program to which each socket belongs.

* **5. Is the host on the network**
  * [5-is_the_host_on_the_network](./5-is_the_host_on_the_network): Bash script that pings an IP address received as an argument 5 times.
  * Usage: `5-is_the_host_on_the_network {IP_ADDRESS}`.
