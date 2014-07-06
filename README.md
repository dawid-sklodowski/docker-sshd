docker-sshd
===========

Quickest way to spin off server instance with sshd on your local machine

Probably it isn't the best idea to build images for your production services starting with plain sshd server [as disuessed here](http://jpetazzo.github.io/2014/06/23/docker-ssh-considered-evil/). 

However for development purposes it is very useful to be able to spin off a new server with sshd access in seconds. It gives you plain vanilla ubuntu server, similar to what you would get from Amazon EC2, if using ubuntu image.

---

### Building

To be able to build provided Dockerfile you need to copy you public ssh key to ``` public-keys ``` directory in this project. It will be used to setup passwordless login.

Usually you can find you public keys in $HOME/.ssh/*.pub

You can copy all your public keys to public-keys directory by:
``` bash
cp $HOME/.ssh/*.pub public-keys/
```

