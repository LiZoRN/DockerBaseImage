FROM ubuntu:trusty
MAINTAINER invain
LABEL Description="it is used as a basic image for Ubuntu.I will update and install emacs." Vendor="Basic image"
ADD sources.list /etc/apt/

RUN \
 DEBIAN_FRONTEND=noninteractive apt-get update && \
 DEBIAN_FRONTEND=noninteractive apt-get -y install wget curl emacs&& \
 DEBIAN_FRONTEND=noninteractive apt-get -y autoremove && \
 DEBIAN_FRONTEND=noninteractive apt-get clean

CMD ["/bin/bash"]
