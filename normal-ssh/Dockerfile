FROM ubuntu:latest

LABEL organization="edu.fudan.selab"
LABEL version="v1"

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y sudo
RUN useradd -rm aober && echo "aober:aober" | chpasswd && adduser aober sudo

RUN apt-get install -y \
	git vim \
	openssh-server openssh-client \
	maven
RUN apt-get install -y \
	openjdk-17-jdk openjdk-17-jre 

RUN service ssh start
EXPOSE 22

ENTRYPOINT ["bash"]

