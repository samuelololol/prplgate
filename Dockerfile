FROM ubuntu:18.04
RUN useradd -m user && yes password | passwd user
EXPOSE 22
RUN apt-get update &&\
    apt-get install -y libpurple-dev zlib1g-dev libxml2-dev openssh-server &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/*
CMD ["/usr/sbin/sshd", "-D"]
