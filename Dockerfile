# Dockerfile

FROM centos as testEnv

COPY . 001-unityc-prjt
WORKDIR 001-unityc-prjt

# 
ENTRYPOINT docker run --rm -v "$PWD":/001-unityc-prjt -w /001-unityc-prjt gcc:4.9 make
CMD echo "Making files.. Done"
