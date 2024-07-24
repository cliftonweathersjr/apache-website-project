# Apache Website Project
In this project, I created a simple Apache web server using EC2 instances and a BASH script.


## Step One: Launch EC2 Instance
To start, locate the EC2 dashboard under services and click 'Launch Instance' to begin customizing your instance settings. For this instance, an Amazon Linux 2 AMI image, 64-bit (X86) architecture and a t2.micro instance type will suffice.

Afterwards, a SSH/Key Pair will need to be either created or selected. If creating a key pair, the settings can be left as default and only the name will need to be given. After selecting 'Create key pair', the file will be downloaded to your machine. The location will need to be noted, because it will be used later.

Final setting that needs to be addressed before launching the instance is the Network Settings. For the instance, a security group will need to be created. For this security group, SSH traffic is only going to be allowed from "My IP" by selecting the dropdown menu. Afterwards, HTTP traffic from the internet is going to be allowed by checking the box next to it. This will allow successfull connections between your machine and the instance and also the browser and the instance.

The EC2 instance can now be launched and after a few minutes, the state of the instance should show as running and under "status check" all checks should pass.


## Step Two: SSH Into EC2 Instance
Open a terminal or any other program you would use for the SSH connection. Once open, change directory to the folder containing the key pair downloaded earlier using the 'cd' command. Before connecting, change the permissions of the file to ensure it is not publicly viewable. The following command will make the file unreadable for any other users on the machine: `chmod 400 key-name.pem`.

Afterwards, locate the 'Public IPv4 DNS' for the EC2 instance after clicking on the Instance ID for said instance in the EC2 Dashboard. With this information, a SSH connection can now be established with the machine. The command syntax would be: `ssh -i key-name.pem ec2-user@PublicDNS`. When receiving the authenticity warning, type 'yes' at the prompt. Once logged in, run `sudo yum update -y` to install all security updates needed on the new machine.
