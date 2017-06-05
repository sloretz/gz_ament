#!/bin/bash

export GAZEBO_PLUGIN_PATH=build/gazebo_experimental/examples/dummy_demo/systems/
export IGN_GUI_PLUGIN_PATH=build/gazebo_experimental/src/gui

build/gazebo_experimental/examples/dummy_demo/dummy_demo &
demo_pid=$!

gazebo

kill $demo_pid
