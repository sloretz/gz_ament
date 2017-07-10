#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

SRC_DIR=$DIR/../src
PKG_DIR=../package.xml

SRC_LIST="gazebo_experimental sdformat ign-tools ign-common ign-gui ign-msgs ign-rendering ign-transport ign-math"

for src in $SRC_LIST; do
	pushd "$SRC_DIR/$src" >& /dev/null
	ln -fTs ../$PKG_DIR/$src.xml package.xml || true
	popd >& /dev/null
done
