#!/bin/bash

# Reset the build directory
rm -rf build
mkdir build

# Copy everything to the build directory
cp -r * build

# Remove unnecesary files
cd build
find . -name ".*" | xargs rm
find . -name "error_log" | xargs rm
find . -name "*~" | xargs rm
find . -name "*.save*" | xargs rm

# Push files to server
ncftpput -u $1 -p $2 -R $3 /public_html/ *

# Remove build directory
cd ..
rm -r build
