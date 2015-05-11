FROM million12/centos-supervisor:latest
MAINTAINER Przemyslaw Ozgo linux@ozgo.info, Marcin Ryzycki marcin@m12.io

RUN \
  yum update -y && \ 
  yum install -y sudo && \
  yum clean all && \
  cd /tmp && \
  curl -O https://raw.githubusercontent.com/mailsquad/docker-serverdensity/master/agent-install.sh && \
  chmod +x agent-install.sh

ADD createnode.sh /config/init/createnode.sh
ADD supervisord.conf /etc/supervisor.d/sd.conf
