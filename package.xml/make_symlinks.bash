#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR/../gazebo_experimental
ln -fs ../package.xml/gazebo.xml package.xml

cd $DIR/../ign/common
ln -fs ../../package.xml/ign_common.xml package.xml

cd $DIR/../ign/gui
ln -fs ../../package.xml/ign_gui.xml package.xml

cd $DIR/../ign/msgs
ln -fs ../../package.xml/ign_msgs.xml package.xml

cd $DIR/../ign/rendering
ln -fs ../../package.xml/ign_rendering.xml package.xml

cd $DIR/../ign/transport
ln -fs ../../package.xml/ign_transport.xml package.xml
