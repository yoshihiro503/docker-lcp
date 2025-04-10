FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    build-essential \
    ocaml ocamlbuild \
    automake autoconf \
    libtool \
    wget \
    python-is-python3 \
    libssl-dev \
    git \
    cmake \
    perl \
    unzip \
    curl \
    libclang-dev \
    ocamlbuild \
    libssl-dev \
    pkg-config

## Install SGX
RUN wget https://download.01.org/intel-sgx/sgx-linux/2.25/distro/ubuntu22.04-server/sgx_linux_x64_sdk_2.25.100.3.bin -O sgx_linux_x64_sdk.bin
RUN chmod a+x sgx_linux_x64_sdk.bin
RUN ./sgx_linux_x64_sdk.bin --prefix=/opt
RUN . /opt/sgxsdk/environment

## Install Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN echo 'source /root/.cargo/env' >> /root/.bashrc
ENV PATH="/root/.cargo/bin:$PATH"

## Install LCP
RUN git clone -b v0.2.12 https://github.com/datachainlab/lcp.git
WORKDIR ./lcp
RUN make all




