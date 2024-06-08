How to install Jenkins on Azure Ubuntu VM
Pre Requisite
Jenkins is an open-source automation software than runs when OpenJDK (Java) is installed on the host server. Prior to install Jenkins, you must do the following tasks:

# Run system update
> apt update -y

If some packages need to be update to enhance system performance, do
> apt list --upgradable

> apt upgrade -y
# Install Java code on the sever
Go to the Jenkins webpage at https://www.jenkins.io/doc/, under the User Handbook
- Select Platform Information
- Click Java Support Policy
The list of Java versions that run the Jenkins system display. Return to the host server and check if the Java version is already installed. Run,
java -version
If not, choose from the command output the most recent version to install that supports the Jenkins process
> apt install openjdk-11-jre-headless -y (verify the Java version that you installed)

# Install Jenkins
Go back to the Jenkins website, under the User Handbook, 
- Select Installing Jenkins
- Select Linux
- Scroll down and under Long Term Support release, copy one command at a time instead of copying the whole paragraph to ensure that your internal system and the remote application are successfully connected and all packages are infallibly installed
Before, run the command below to verify the status of Jenkins
systemctl status jenkins
Then, add Jenkins repository to the server

> wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
  
> echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

> apt update -y
> apt install jenkins -y

After installing the open-source integration tool, do this
> systemctl start jenkins
> systemctl enable jenkins

Jenkins runs with the default firewall on port 8080 which allows all traffic, so adjust and enable traffic with
> ufw allow 8080
> ufw enable 

Access Jenkins on your web browser like Chrome
http://your_server_ip_or_domain:8080
