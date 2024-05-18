Remote access to GitHub repository in Linux

# GitHub - an open-source registry very easy to browse, manage, and secure your account and repositories. It is a self-explanatory application for new beginners who create their first repository, it offers various security types to protect your repositories and contents, and it is out of monetary charge --doesn't require payment to create and maintain your account.
# follow these steps to create and access your GitHub repository remotely/n
 - log in to GitHub with the following options
    . GitHub credentials, or
    . Select one of the proposed third-party applications
 - in the top left side next to your profile photo, click the menu bar <img width="38" alt="image" src="https://github.com/padamel/cakesitory/assets/82719248/6b4a2f0a-1511-41bc-947a-586c5f87aa2d">
    . Select Home
In the left panel of the Home page, click the green button to create a repository and begin configuring your repository by naming it, adding text in the description buffer (this is to tell other users what information is saved in the repository, and what they are used for). Two options are given to manage your repository, you can decide to leave it publicly or leave it private, it is up to you. you can add a README file to your repository now or later, there is no obligation (I prefer you use the git CLI to practice how to initialize a repository and add a file to it).
 - Create repository
   <img width="74" alt="image" src="https://github.com/padamel/cakesitory/assets/82719248/b8f1968b-f42b-43a1-9df0-5b5e539dc620">
 - Scroll down and click the Create repository button
 - Login to your client server using your credentials and escalate to the privileged account (become a root user, identifiable with #)
 - return to the repository you just created and click the copy icon <img width="39" alt="image" src="https://github.com/padamel/cakesitory/assets/82719248/3f65a545-c958-4f2f-9974-6c9a1aa6e20e"> next to the repo URL, which is https://github.com/your_username/repo_name.git
    . As a result, you will read this message after downloading the remote repo to your local machine (Note: clone the repository into the working directory easy to remember)

   Cloning into 'cakesitory'...
warning: You appear to have cloned an empty repository.
  - Do the ls -al command to verify the successful cloning of the repository. Note that the .git directory shows to log in every git activity that occurs in the working repository
  - cd to move to the repository you cloned
You can either go back to the repository page and copy the whole command line to add a README file, create a branch, and push the committed change to your remote repository, or for training purposes and a better understanding of what git CLI does, I prefer to type each git CLI manually
  - append README.md file with the echo cmd, this is creating the file in the server system
echo "# cakesitory" >> README.md 
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

  - Scroll down, and in the left panel select <>Developer settings
  - Click on the down arrow next to Personal access tokens and select token (classic)
    <img width="325" alt="image" src="https://github.com/padamel/cakesitory/assets/82719248/b0953e13-4b94-404e-a2cc-44da72761297">

  - Click Generate New Token button
  - Select Generate New Token (classic)
  - In the Note buffer, name the token or define what it is used for
   <img width="321" alt="image" src="https://github.com/padamel/cakesitory/assets/82719248/1135becc-c6ec-4e64-8e89-b095ebd03ea1">

  - Under Expiration, select the period at which the token will remain valid until expiration
  - Under Scope, specify the type of access the token will authorize you to do.
       For this tutorial, we selected 2 scopes (users, and delete repo)
  - Click Generate token button
  - Return to the client-server and type this command line
     # git push -u origin main
       . Enter the username that corresponds to the one on your GitHub profile
       . Copy and paste the token you generated, it helps connect to your remote repository through the OAuth security protocol.
  - Refresh your browser and notice that your repository is created with empty file
As a result, the command returns the information below: the number of objects stored in your repo, the branch in which your repo lives, etc.
     Enumerating objects: 3, done.
Counting objects: 100% (3/3), done.
Writing objects: 100% (3/3), 258 bytes | 258.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
 * [new branch]      main -> main
Branch 'main' set up to track remote branch 'main' from 'origin'.
