FROM ubuntu:20.04

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ENV http_proxy=http://10.176.34.98:3128
ENV https_proxy=http://10.176.34.98:3128

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
	openssh-server openssh-client \
	git vim \
	sqlite \
	software-properties-common \
	build-essential pkg-config autoconf automake cmake clang \
	m4 libmpfr-dev \
	openjdk-17-jdk openjdk-17-jre \
	python3-distutils

RUN add-apt-repository ppa:avsm/ppa && apt update && apt install -y opam
RUN git config --global -add safe.directory /infer \
	&& opam init -y \
	&& opam switch create 4.14.0 \
	&& eval $(opam env --switch=4.14.0)

WORKDIR /infer
ENTRYPOINT ["bash"]

