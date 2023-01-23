FROM cruizba/ubuntu-dind

LABEL organization="reunion-project"
LABEL version="v1"

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
	git vim \
	openssh-server openssh-client \
	openjdk-17-jdk openjdk-17-jre 

RUN apt-get install -y sudo

RUN useradd -rm aober && echo "aober:aober" | chpasswd && adduser aober sudo
RUN service ssh start
EXPOSE 22

ENTRYPOINT ["bash"]

