#!/bin/sh
rm -rf build/
mkdir build/
cd build/

cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_INSTALL_LIBDIR=lib

make install

if [ "$1" = "y" ]; then
 sudo make install
fi
