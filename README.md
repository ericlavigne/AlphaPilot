# AlphaPilot

AlphaPilot is a challenge by Lockheed, NVidia, and the Drone Racing League to create an AI drone racing pilot.

---

### Contents

* [Usage](#usage)
  * [Installing Dependencies](#installing-dependencies)
  * [Build Instructions](#build-instructions)
  * [Launching the Simulator](#launching-the-simulator)
* [Project Components](#project-components)

### Usage

Created based on instructions at: https://github.com/ethz-asl/rotors_simulator/

#### Installing Dependencies

This section is heavily based on the
[RotorS instructions](https://github.com/ethz-asl/rotors_simulator/).

```sh
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list'
wget http://packages.ros.org/ros.key -O - | sudo apt-key add -
sudo apt-get update
sudo apt-get install ros-kinetic-desktop-full ros-kinetic-joy ros-kinetic-octomap-ros ros-kinetic-mavlink python-wstool python-catkin-tools protobuf-compiler libgoogle-glog-dev ros-kinetic-control-toolbox
sudo rosdep init
rosdep update
source /opt/ros/kinetic/setup.bash
```

#### Build Instructions

```sh
git clone git@github.com:ericlavigne/AlphaPilot.git
cd AlphaPilot
./setup.sh
catkin build
```

#### Launching the Simulator

The first attempt will probably timeout waiting for Gazebo. Just kill everything and try again.
Later attempts will be faster due to caching so eventually it will stop timing out. When this
works correctly you will see a drone hovering.

```sh
roslaunch rotors_gazebo mav_hovering_example.launch mav_name:=firefly world_name:=basic
```

### Project Components

TODO

