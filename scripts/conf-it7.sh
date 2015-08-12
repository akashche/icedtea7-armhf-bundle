#!/bin/bash

BUNDLE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export PATH=$PATH:$BUNDLE_DIR/ant/bin:$BUNDLE_DIR/jdk7/bin
./configure \
    --host=arm-linux-gnueabihf \
    --with-jdk-home=$BUNDLE_DIR/jdk7 \
    --with-rhino=$BUNDLE_DIR/rhino/js.jar \
    --disable-bootstrap \
    --disable-bootstrap-tools \
    --disable-system-gtk \
    --disable-system-gio \
    --disable-compile-against-syscalls \
    --disable-system-gconf \
    --disable-docs
    
