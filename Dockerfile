FROM ubuntu:18.04
RUN apt-get update &&\
    apt-get install -y libpurple-dev zlib1g-dev libxml2-dev &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/*
RUN useradd -m user && yes password | password user
CMD /bin/bash