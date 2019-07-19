# Dockerfile

FROM centos as 001-unityc-prjt-testEnv

COPY . 001-unityc-prjt
WORKDIR 001-unityc-prjt

# 
ENTRYPOINT yum groupinstall "Development Tools" -y
ENTRYPOINT make
CMD echo "Making files.. Done"
