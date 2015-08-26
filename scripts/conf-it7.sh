#!/bin/bash

SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BUNDLE_DIR=$SCRIPTS_DIR/../
# export PATH=$PATH:$BUNDLE_DIR/ant/bin:$BUNDLE_DIR/jdk7/bin
./configure \
    --host=arm-linux-gnueabihf \
    --with-jdk-home=$BUNDLE_DIR/jdk7 \
    --with-rhino=$BUNDLE_DIR/rhino/js.jar \
    --disable-bootstrap \
    --disable-bootstrap-tools \
    --disable-compile-against-syscalls \
    --disable-docs
    
