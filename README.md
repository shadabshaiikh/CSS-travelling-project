## Project Overview:

Here's a beginner-friendly AWS project to set up and run an application on an EC2 instance with Apache2:
This project involves launching a web application on an EC2 instance (a virtual server in AWS) and configuring Apache2 as the web server to serve the application. Apache2 will handle HTTP requests, allowing users to access your application via a browser.
Steps to Implement the Project

## Set Up an EC2 Instance:

In the AWS Management Console, go to EC2 and launch a new instance.
Choose Amazon Linux 2 as the operating system for ease and AWS integration.
Select an instance type (for beginners, t2.micro is free-tier eligible).
Configure security settings to allow HTTP (port 80) for web access and SSH (port 22) for management.


### Connect to the EC2 Instance:
### 1. Update System 

```bash
sudo apt-get update
```
### 2. Install Apache2 on the EC2 Instance:

```bash
sudo apt install apache2 -y
```

### 3. Start the Apache2 service and set it to launch on boot:

```bash
sudo systemctl start httpd
sudo systemctl enable httpd
```

```bash
sudo /var/www/html/
```

### 4. Test the Application:

Open a browser and enter the public IP or public DNS of your EC2 instance. You should see your application’s web page.

## Project Summary
You now have a basic web application hosted on an EC2 instance, accessible to anyone with the instance's public IP. This project provides a solid foundation in using AWS EC2 and web servers.
