FROM ubuntu:18.04
RUN useradd -m user && yes password | passwd user
EXPOSE 22
RUN apt-get update &&\
    apt-get install -y \
        openssh-server \
        rsync build-essential cmake g++ gdb \
        pidgin-dev libpurple-dev zlib1g-dev libxml2-dev &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/*
RUN mkdir /var/run/sshd
CMD ["/usr/sbin/sshd", "-D"]
