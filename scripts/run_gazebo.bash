#!/bin/bash

# export GAZEBO_PLUGIN_PATH=build/gazebo_experimental/src/systems/physics
export GAZEBO_PLUGIN_PATH=$LD_LIBRARY_PATH
export IGN_GUI_PLUGIN_PATH=build/gazebo_experimental/src/gui

gazebo -v 4
