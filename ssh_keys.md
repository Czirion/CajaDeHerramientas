# Add SSH Keys to server and conect with shortcut

In the local computer run:
~~~
ssh-keygen -t ed25519 -C "your_email@example.com"
ssh-copy-id -i ~/.ssh/name-of-key.pub user@ip.address.of.server #And give the password for the server
~~~

Go to this page [https://idms-web-selfservice.oit.duke.edu/advanced](https://idms-web-selfservice.oit.duke.edu/advanced).
Enter your credentials.
Click on something like "Register a new SSH key".
Paste the content of your `.pub` key file into the gray box that appears.
Click "Add Key".

Make a text file named `config` in the path `~/.ssh/` with this inside:
~~~
Host *
    AddKeysToAgent yes
    IdentityFile ~/.ssh/id_ed25519 #Put the name of your ssh-key files here (without the .pub extension)
    ForwardAgent yes

Host serverNameExample # Here put a nickname to the server
    HostName dcc-login.oit.duke.edu # Here put the correct domain of your server
    User usernameExample # Here put the username that you have in said server

# Repeat the last chunk of the file for as many servers as you want to include
~~~

Have a good day afterwards.
