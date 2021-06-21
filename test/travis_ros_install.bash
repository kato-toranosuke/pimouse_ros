#!/bin/bash -xve

#required packages
pip3 install catkin_pkg
pip3 install empty
pip3 install pyyaml
pip3 install rospkg

#ros install
cd ..
git clone https://github.com/ryuichiueda/ros_setup_scripts_Ubuntu20.04_server.git
cd ./ros_setup_scripts_Ubuntu20.04_server
bash ./step0.bash
bash ./step1.bash

#catkin setup
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
source /opt/ros/noetic/setup.bash
catkin_init_workspace
cd ~/catkin_ws
catkin_make