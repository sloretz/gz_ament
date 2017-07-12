#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

SRC_DIR=$DIR/../src
PKG_DIR=../package.xml

SRC_LIST="gazebo ign-common ign-math ign-msgs ign-tools ign-transport sdformat"

for src in $SRC_LIST; do
	pushd "$SRC_DIR/$src" >& /dev/null
	ln -fTs ../$PKG_DIR/$src.xml package.xml || true
	popd >& /dev/null
done
