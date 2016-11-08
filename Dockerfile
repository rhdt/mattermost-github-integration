FROM registry.centos.org/centos/centos

COPY . /opt
RUN mv /opt/config.template /opt/config.py
RUN yum -y update
RUN yum -y install python python-flask python-requests

EXPOSE 5000
WORKDIR /opt
CMD python server.py

