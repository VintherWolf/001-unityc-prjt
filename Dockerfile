# Dockerfile

FROM centos as testEnv

COPY . 001-unityc-prjt
WORKDIR 001-unityc-prjt

# 
ENTRYPOINT yum groupinstall "Development Tools" -y
ENTRYPOINT docker run --rm -v "$PWD":/001-unityc-prjt -w /001-unityc-prjt/bin gcc:4.9 make
CMD echo "Making files.. Done"
