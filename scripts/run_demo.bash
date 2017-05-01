#!/bin/bash

GAZEBO_PLUGIN_PATH=build/gazebo_experimental/examples/dummy_demo/systems/ build/gazebo_experimental/examples/dummy_demo/dummy_demo &
demo_pid=$!

IGN_GUI_PLUGIN_PATH=build/gazebo_experimental/src/gui gazebo

kill $demo_pid
