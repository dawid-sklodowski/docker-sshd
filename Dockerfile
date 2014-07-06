FROM ubuntu
MAINTAINER Dawid Sklodowski

RUN apt-get -q -y  update
RUN apt-get -q -y install openssh-server

RUN echo "%sudo  ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/nopasswd

RUN useradd --create-home --shell /bin/bash --user-group --groups adm,sudo ubuntu
RUN mkdir /home/ubuntu/.ssh
ADD key.pub /home/ubuntu/.ssh/key.pub
RUN cat /home/ubuntu/.ssh/key.pub > /home/ubuntu/.ssh/authorized_keys
RUN rm /home/ubuntu/.ssh/id_rsa.pub
RUN mkdir /var/run/sshd

RUN chown -R ubuntu:ubuntu /home/ubuntu/.ssh
EXPOSE 22

ENTRYPOINT ["/usr/sbin/sshd", "-D"]

