# Add SSH Keys to a server and connect using a nickname

Go to your directory `~/.ssh` and see what keys you already have. Probably you have the key files `id_ed25519` and `id_ed25519.pub`.

Run the following to create the new keys: 
~~~
ssh-keygen -t ed25519 -C "your_email@example.com" # Change the address to your e-mail (leave the quotes there)
# When it prompts for a key name you can just click Enter to use the default names, but if you already have
# the key files with the names above they might get overwritten.
# So you can write a new name for these specific key files, for example: id_ed25519_duke
~~~
Check that the files `id_ed25519_duke` and `id_ed25519_duke.pub` were created in `~/.ssh/` were generated.  

Now run the following to copy your public key to the server:
~~~
ssh-copy-id -i ~/.ssh/id_ed25519_duke.pub user@ip.address.of.server # Change the name of the key and the address of the server.
# When prompted, give the password for the server
~~~

Go to this page [https://idms-web-selfservice.oit.duke.edu/advanced](https://idms-web-selfservice.oit.duke.edu/advanced) 
- Enter your credentials.  
- Click on something like "Register a new SSH key".  
- Paste the content of your `.pub` key file into the gray box that appears.  
- Click "Add Key".  

Make a text file named `config` in the path `~/.ssh/` with this inside:
~~~
Host *
    AddKeysToAgent yes
    IdentityFile ~/.ssh/id_ed25519_duke #Put the name of your ssh-key files here (without the .pub extension)
    ForwardAgent yes

Host serverNameExample # Here put a nickname to the server
    HostName dcc-login.oit.duke.edu # Here put the correct domain of your server
    User usernameExample # Here put the username that you have in said server

# Repeat the last chunk for as many servers as you want to include, changing the proper details.
~~~

Have a good day afterward.
