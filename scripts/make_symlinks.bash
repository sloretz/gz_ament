#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

SRC_DIR=$DIR/../src
PKG_DIR=../package.xml

cd $SRC_DIR/gazebo_experimental
ln -Ts ../$PKG_DIR/gazebo_experimental.xml package.xml || true

cd $SRC_DIR/sdformat
ln -Ts ../$PKG_DIR/sdformat.xml package.xml || true

cd $SRC_DIR/ign/tools
ln -Ts ../../$PKG_DIR/ign_tools.xml package.xml || true

cd $SRC_DIR/ign/common
ln -Ts ../../$PKG_DIR/ign_common.xml package.xml || true

cd $SRC_DIR/ign/gui
ln -Ts ../../$PKG_DIR/ign_gui.xml package.xml || true

cd $SRC_DIR/ign/msgs
ln -Ts ../../$PKG_DIR/ign_msgs.xml package.xml || true

cd $SRC_DIR/ign/rendering
ln -Ts ../../$PKG_DIR/ign_rendering.xml package.xml || true

cd $SRC_DIR/ign/transport
ln -Ts ../../$PKG_DIR/ign_transport.xml package.xml || true

cd $SRC_DIR/ign/math
ln -Ts ../../$PKG_DIR/ign_math.xml package.xml || true
