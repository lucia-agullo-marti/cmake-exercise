#!/usr/bin/env bash

# Create the build directory if it doesn't exist.
# The -p flag ensures no error occurs if the directory already exists and also creates any necessary parent directories
mkdir -p build
cd build

cmake -DCMAKE_BUILD_TYPE=Debug ..
make
./cmake-exercise ../yamlParser/config.yml