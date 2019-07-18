# Dockerfile

FROM ubuntu as testEnv

COPY . 001-unityc-prjt
WORKDIR 001-unityc-prjt

# 
ENTRYPOINT make
CMD echo "Done"
