#!/bin/bash

here=$PWD
mkdir -p Debug Release
cd Debug
cmake -DCMAKE_BUILD_TYPE=Debug ../../src
make DESTDIR=$PWD install
cd $here

cd Release
cmake -DCMAKE_BUILD_TYPE=Release ../../src
make DESTDIR=$PWD install
cd $here

