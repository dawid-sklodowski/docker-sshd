docker-sshd
===========

Quickest way to spin off server instance with sshd on your local machine


---

### Building

To be able to build provided Dockerfile you need to copy you public ssh key to ``` public-keys ``` directory in this project. It will be used to setup passwordless login.

Usually you can find you public keys in $HOME/.ssh/*.pub

You can copy all your public keys to public-keys directory by:
``` bash
cp $HOME/.ssh/*.pub public-keys/
```

