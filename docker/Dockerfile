FROM debian
WORKDIR /data
RUN dpkg --add-architecture amd64 && apt update && apt install -y qemu-user-static g++-multilib-x86-64-linux-gnu libc6-dev:amd64 libgmp-dev:amd64 nlohmann-json3-dev nasm
RUN apt install -y qemu-user
RUN rm -rf /var/lib/apt/lists/*
CMD ["bash"]
