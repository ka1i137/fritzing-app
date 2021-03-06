#!/bin/bash --posix

PREFIX=$(pwd)

cd /tmp

git clone https://github.com/libgit2/libgit2.git libgit2
cd libgit2

echo "build"
mkdir build && cd build
cmake ..
cmake --build .
echo "install"
cmake .. -DCMAKE_INSTALL_PREFIX=/Users/runner/work/fritzing-app/libgit2
cmake --build . --target install

cd ${PREFIX}