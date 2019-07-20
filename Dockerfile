FROM centos

RUN yum update -y
RUN yum groupinstall "Development Tools" -y
RUN yum clean all

COPY . 001-unityc-prjt
WORKDIR 001-unityc-prjt