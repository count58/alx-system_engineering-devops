0x0B-ssh
---------------------------------------------------------------------------

SSH stands for Secure Shell. It is a network protocol that provides a secure way to access a remote computer over an unsecured network. SSH uses encryption to protect all communications between the two computers, including the login process and the data that is transferred between them.

SSH is often used to log into and manage remote servers, but it can also be used to transfer files between computers and to create secure tunnels between networks.

To use SSH, you need to have an SSH client installed on your computer. There are many different SSH clients available, both free and commercial. Some popular SSH clients include PuTTY, OpenSSH, and MobaXterm.

Once you have an SSH client installed, you can connect to a remote computer by opening the SSH client and entering the IP address or hostname of the remote computer. You will also need to enter the username and password for a user account on the remote computer.

Once you are connected to the remote computer, you can use it as if you were sitting in front of it. You can execute commands, open files, and transfer files.

SSH is a very secure protocol, and it is widely used by system administrators and other IT professionals to manage remote computers. It is also a good choice for anyone who needs to securely access a remote computer over an unsecured network.

Here are some of the benefits of using SSH:

* **Security:** SSH uses encryption to protect all communications between the two computers, including the login process and the data that is transferred between them. This makes it a very secure way to access a remote computer.
* **Versatility:** SSH can be used to log into and manage remote servers, transfer files between computers, and create secure tunnels between networks.
* **Portability:** SSH is available on a wide variety of platforms, including Windows, macOS, Linux, and Unix. This makes it a good choice for anyone who needs to access a remote computer, regardless of the platform they are using.

Overall, SSH is a powerful and versatile tool that can be used to securely access and manage remote computers.

---------------------------------------------------------------------------------------=

TASKS 

0. Use a private key
Write a Bash script that uses ssh to connect to your server using the private key ~/.ssh/school with the user ubuntu.

Requirements:

Only use ssh single-character flags
You cannot use -l
You do not need to handle the case of a private key protected by a passphrase

1. Create an SSH key pair
Write a Bash script that creates an RSA key pair.

Requirements:

Name of the created private key must be school
Number of bits in the created key to be created 4096
The created key must be protected by the passphrase betty

2. Client configuration file
Your machine has an SSH configuration file for the local SSH client, let’s configure it to our needs so that you can connect to a server without typing a password. Share your SSH client configuration in your answer file.

Requirements:

Your SSH client configuration must be configured to use the private key ~/.ssh/school
Your SSH client configuration must be configured to refuse to authenticate using a password

3. Let me in!
Now that you have successfully connected to your server, we would also like to join the party.

Add the SSH public key below to your server so that we can connect using the ubuntu user.

4. Client configuration file (w/ Puppet)
Let’s practice using Puppet to make changes to our configuration file. Just as in the previous configuration file task, we’d like you to set up your client SSH configuration file so that you can connect to a server without typing a password.

Requirements:

Your SSH client configuration must be configured to use the private key ~/.ssh/school
Your SSH client configuration must be configured to refuse to authenticate using a password
