#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

SRC_DIR=$DIR/../src
PKG_DIR=../package.xml

SRC_LIST="gazebo_experimental ign-common ign-gui ign-math ign-msgs ign-rendering ign-sensors ign-tools ign-transport sdformat"

for src in $SRC_LIST; do
	pushd "$SRC_DIR/$src" >& /dev/null
	ln -fTs ../$PKG_DIR/$src.xml package.xml || true
	popd >& /dev/null
done
