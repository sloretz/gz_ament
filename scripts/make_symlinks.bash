#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

SRC_DIR=$DIR/../src
PKG_DIR=../package.xml

cd $SRC_DIR/gazebo_experimental
ln -fTs ../$PKG_DIR/gazebo_experimental.xml package.xml || true

cd $SRC_DIR/sdformat
ln -fTs ../$PKG_DIR/sdformat.xml package.xml || true

cd $SRC_DIR/ign-tools
ln -fTs ../$PKG_DIR/ign-tools.xml package.xml || true

cd $SRC_DIR/ign-common
ln -fTs ../$PKG_DIR/ign-common.xml package.xml || true

cd $SRC_DIR/ign-gui
ln -fTs ../$PKG_DIR/ign-gui.xml package.xml || true

cd $SRC_DIR/ign-msgs
ln -fTs ../$PKG_DIR/ign-msgs.xml package.xml || true

cd $SRC_DIR/ign-rendering
ln -fTs ../$PKG_DIR/ign-rendering.xml package.xml || true

cd $SRC_DIR/ign-transport
ln -fTs ../$PKG_DIR/ign-transport.xml package.xml || true

cd $SRC_DIR/ign-math
ln -fTs ../$PKG_DIR/ign-math.xml package.xml || true
