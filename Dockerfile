# Dockerfile

FROM centos

COPY . 001-unityc-prjt
WORKDIR 001-unityc-prjt

# 
ENTRYPOINT yum groupinstall "Development Tools" -y
CMD echo "Ready to Compile"
