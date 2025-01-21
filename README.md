<<<<<<< HEAD
Remote access to GitHub repository in Linux

#GitHub - an open-source registry very easy to browse, manage, and secure your account and repositories. It is a self-explanatory application for new beginners who create their first repository, it offers various security types to protect your repositories and contents, and it is out of monetary charge --doesn't require payment to create and maintain your account.
# follow these steps to create and access your GitHub repository remotely
 - log in to GitHub with the following options <br/>
    . GitHub credentials, or <br/>
    . Select one of the proposed third-party applications
 - in the top left side next to your profile photo, click the menu bar <img width="38" alt="image" src="https://github.com/padamel/cakesitory/assets/82719248/6b4a2f0a-1511-41bc-947a-586c5f87aa2d"> <br/>
    . Select Home
In the left panel of the Home page, click the green button to create a repository and begin configuring your repository by naming it, adding text in the description buffer (this is to tell other users what information is saved in the repository, and what they are used for). Two options are given to manage your repository, you can decide to leave it publicly or leave it private, it is up to you. you can add a README file to your repository now or later, there is no obligation (I prefer you use the git CLI to practice how to initialize a repository and add a file to it).
 - Create repository
   <img width="74" alt="image" src="https://github.com/padamel/cakesitory/assets/82719248/b8f1968b-f42b-43a1-9df0-5b5e539dc620">
 - Scroll down and click the Create repository button
 - Login to your client server using your credentials and escalate to the privileged account (become a root user, identifiable with #)
 - return to the repository you just created and click the copy icon <img width="39" alt="image" src="https://github.com/padamel/cakesitory/assets/82719248/3f65a545-c958-4f2f-9974-6c9a1aa6e20e"> next to the repo URL, which is https://github.com/your_username/repo_name.git
    # git clone <copied_URL>
As a result, you will read this message after downloading the remote repo to your local machine (Note: clone the repository into the working directory easy to remember) <br/>
   Cloning into 'cakesitory'...
warning: You appear to have cloned an empty repository.
  - Do the ls -al command to verify the successful cloning of the repository. Note that the .git directory shows to log in every git activity that occurs in the working repository
  - cd to move to the repository you cloned
You can either go back to the repository page and copy the whole command line to add a README file, create a branch, and push the committed change to your remote repository, or for training purposes and a better understanding of what git CLI does, I prefer to type each git CLI manually
  - append README.md file with the echo cmd, this is creating the file in the working directory
     # echo "# cakesitory" >> README.md 
  - Initialize your repo
     # git init
  - Add README.md to the repo, but not yet visible on the GitHub interface
     # git add README.md
  - commit a file to the repo is to let git know that there has been a change in its environment
     # git commit -m "first commit"
  - create a branch as an environment in which the repository contents will live
     # git branch -M main/dev/test
Before pushing the change you made in the repository from the client-server and since GitHub no longer supports authentication with the password, it is recommended to use the Public Access Key to authenticate to get access to your data in GitHub.For a best practice and secure method of transferring data to the remote repository, you have options to generate a key pair. Either you use the key-gen command in Linux to generate a public/private key, store the private key on your local server then copy and store the public key on the GitHub security page, or you generate the key from the GitHub interface by following these steps
  - In the top right angle, click the profile picture <img width="42" alt="image" src="https://github.com/padamel/cakesitory/assets/82719248/625b8b4e-8a0e-422e-8c0e-4ccb74575cf5">
  - Scroll down, and on the left panel select <>Developer settings
  - Click on the down arrow next to Personal access tokens and select token (classic)
    <img width="325" alt="image" src="https://github.com/padamel/cakesitory/assets/82719248/b0953e13-4b94-404e-a2cc-44da72761297">
  - Click Generate New Token button
  - Select Generate New Token (classic)
  - In the Note buffer, name the token or define what it is used for
   <img width="321" alt="image" src="https://github.com/padamel/cakesitory/assets/82719248/1135becc-c6ec-4e64-8e89-b095ebd03ea1"> <br/>
  - Under Expiration, select the period at which the token will remain valid until expiration <br/>
  - Under Scope, specify the type of access the token will authorize you to do <br/>
       For this tutorial, we selected 2 scopes (users, and delete repo)
  - Click Generate token button <br/>
  - Return to the client-server and type this command line
     # git push -u origin main <br/>
       . Enter the username that corresponds to the one on your GitHub profile <br/>
       . Copy and paste the token you generated, it helps connect to your remote repository through the OAuth security protocol.
  - Refresh your browser and notice that your repository is created with empty file
As a result, the command returns the information below: the number of objects stored in your repo, the branch in which your repo lives, etc.
     Enumerating objects: 3, done.
Counting objects: 100% (3/3), done.
Writing objects: 100% (3/3), 258 bytes | 258.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
 * [new branch]      main -> main
Branch 'main' set up to track remote branch 'main' from 'origin'.
=======
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
>>>>>>> 2d06280b2ad12ada5f592e3318ee08cc35bf18c4
