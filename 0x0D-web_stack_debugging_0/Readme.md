0x0D-web_stack_debugging_0

Web stack debugging is the process of identifying and fixing errors in web applications. It can be a complex process, as web stacks are often composed of many different components, including web servers, application servers, databases, and front-end frameworks.

There are a number of different tools and techniques that can be used for web stack debugging. Some common tools include:

Log files: Log files contain information about all of the requests that have been made to a web application. This information can be used to identify errors and track down the source of problems.
Debuggers: Debuggers allow you to step through your code line by line and inspect the values of variables. This can be helpful for identifying bugs in your application code.
Profilers: Profilers can be used to identify performance bottlenecks in your web application. This information can be used to optimize your code and improve the performance of your application.
In addition to using tools, there are a number of general tips that can be helpful for web stack debugging:

Reproduce the error: The first step in debugging a problem is to be able to reproduce it. This means being able to identify the exact steps that need to be taken in order to trigger the error.
Isolate the problem: Once you can reproduce the error, you need to isolate the problem. This means identifying the specific component of your web stack that is causing the problem.
Fix the problem: Once you have isolated the problem, you can fix it. This may involve fixing a bug in your code, changing the configuration of your web server, or updating your database schema.
Test the fix: Once you have fixed the problem, you need to test the fix to make sure that it works. This means reproducing the error and verifying that it no longer occurs.
Web stack debugging can be a challenging task, but it is an essential skill for any web developer. By following the tips above, you can learn to identify and fix errors in your web applications more quickly and efficiently.

Here are some additional tips for web stack debugging:

Use a consistent development environment: This will help you to rule out problems caused by differences in your development environment and your production environment.
Use a version control system: This will allow you to track changes to your code and revert to previous versions if necessary.
Use a deployment system: This will help you to deploy changes to your production environment in a controlled and repeatable way.
Monitor your production environment: This will help you to identify and fix problems before they affect your users.
By following these tips, you can make web stack debugging a less painful process and improve the quality of your web applications.

# 0x0D. Web stack debugging #0 

<p align="center">
  <img src="https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/265/uWLzjc8.jpg" />
</p>

## Resource

### Concepts

<details>
<summary>Network basics</summary><br>
<ul>
  <li>Networking is a big part of what made computers so powerful and why the Internet exists. It allows machines to communicate with each other.
  <ul> <li><a href="https://www.techtarget.com/searchnetworking/definition/protocol">What is a protocol.</a></li> </ul>
  <ul> <li><a href="https://computer.howstuffworks.com/internet/basics/what-is-an-ip-address.htm">What is an IP address.</a></li> </ul>
  <ul> <li><a href="https://www.techtarget.com/searchnetworking/definition/TCP-IP">What is TCP/IP.</a></li> </ul>
  <ul> <li><a href="https://www.lifewire.com/port-numbers-on-computer-networks-817939">What is an Internet Protocol (IP) port?.</a></li> </ul>
  </li>
</ul>
</details>

<details>
<summary>Docker</summary><br>
<ul>
  <li>Readme
  <ul> <li><a href="https://www.zdnet.com/article/what-is-docker-and-why-is-it-so-darn-popular/">What is Docker and why is it popular</a></li> </ul>
  </li>
</ul>

<details>
<summary>Let's first pull a Docker image and run a container:</summary><br>
<a href='https://postimages.org/' target='_blank'><img src='https://i.postimg.cc/13tHWGzc/image.png' border='0' alt='image'/></a>
</details>

Note that `docker` command will pull the Ubuntu docker container image from the Internet and run it. I let you look at the meaning of the flags using the command `docker run --help`, the main idea is that it keeps the container up and running.

<details>
<summary>To execute a command on the Docker container, use *docker exec*:</summary><br>
<a href='https://postimages.org/' target='_blank'><img src='https://i.postimg.cc/fLLDygWS/image.png' border='0' alt='image'/></a>
</details>

<details>
<summary>If you want to connect to your Docker container and use Bash, you need to use *docker exec -ti*:</summary><br>
<a href='https://postimages.org/' target='_blank'><img src='https://i.postimg.cc/433xH3B3/image.png' border='0' alt='image'/></a>
</details>

<details>
<summary>If you want to stop a container, use *docker stop*:</summary><br>
<a href='https://postimages.org/' target='_blank'><img src='https://i.postimg.cc/sxCzmf97/image.png' border='0' alt='image'/></a>
</details>

</details>

<details>
<summary>Web stack debugging</summary><br>
<ul>
  <li>Intro
  <ul>Debugging usually takes a big chunk of a software engineer’s time. The art of debugging is tough and it takes years, even decades to master, and that is why seasoned software engineers are the best at it… experience. They have seen lots of broken code, buggy systems, weird edge cases and race conditions.</ul>

  <p align="center">
   <img src="https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/45dffb0b1da8dc2ce47e340d7f88b05652c0f486.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20220105%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220105T050302Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=d499fde872931932fc76dedd39b4298797482fd9b7ca1fc09f0a885ea8aa1cae" />
  </p>
  </li>
</ul>

<details>
<summary>Test and verify your assumptions</summary><br>
<a href='https://postimages.org/' target='_blank'><img src='https://i.postimg.cc/rFMtkCt8/image.png' border='0' alt='image'/></a>
</details>

<ul>
  <li>Debugging is fun
  <ul>Debugging can be frustrating, but it will definitely be part of your job, it requires experience and methodology to become good at it. The good news is that bugs are never going away, and the more experienced you become, trickier bugs will be assigned to you! Good luck 😃</ul>

  <p align="center">
   <img src="https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/bae58c9f066a9668001ef4b4c39778407439d2f9.gif?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20220105%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220105T050302Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=67d4c1d736b92bef534ab94427ff3bef2c8ad4b498cafb512fbe6f6ddefec9ba" />
  </p>
  </li>
</ul>

</details>

## Tasks

<details>
<summary><a href="./0-give_me_a_page">0. Give me a page!</a></summary><br>
<a href='https://postimages.org/' target='_blank'><img src='https://i.postimg.cc/yxybJXPm/image.png' border='0' alt='image'/></a>
<br>
<ul>
  <li>Advice; install docker on your local machine then pull the docker image debug the issue then proceed.</li>
<ul>
AVOID installing docker in ubuntu 14.04
</details>
