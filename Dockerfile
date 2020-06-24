ARG VERSION=19.10
FROM arm64v8/ubuntu:$VERSION
RUN apt update && apt install git -y
RUN apt install build-essential -y
RUN apt install libsdl1.2-dev -y
RUN apt install libsdl-net1.2-dev -y
VOLUME /build
WORKDIR /build
CMD ["/bin/bash"]