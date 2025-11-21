# Based on
FROM ubuntu:24.04

# Work directory
WORKDIR /mnt/host

# Copy project files from host into the container
COPY . .

# Install additional build tools
RUN apt-get update && apt-get install -y\
    build-essential \
    cmake \
    unzip \
    wget \
    vim \
    git \
    libblas-dev \
    liblapack-dev \
    libboost-all-dev \
    libhdf5-dev \
    libmetis-dev \
    libopenmpi-dev\
    libyaml-cpp-dev \
    openmpi-bin \
    libkokkos-dev \
    && rm -rf /var/lib/apt/lists/*

# Install deal.II
RUN apt-get update && \
    apt-get install -y libdeal.II-dev && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]