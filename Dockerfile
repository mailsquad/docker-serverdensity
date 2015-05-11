FROM million12/centos-supervisor:latest
MAINTAINER Przemyslaw Ozgo linux@ozgo.info, Marcin Ryzycki marcin@m12.io

RUN \
  yum update -y && \ 
  yum install -y sudo && \
  yum clean all && \
  chmod +x /tmp/agent-install.sh

ADD createnode.sh /config/init/createnode.sh
ADD supervisord.conf /etc/supervisor.d/sd.conf
ADD agent-install.sh /tmp/agent-install.sh
