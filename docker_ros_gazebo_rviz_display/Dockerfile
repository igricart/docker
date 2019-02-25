# This is an auto generated Dockerfile for ros:robot
# generated from docker_images/create_ros_image.Dockerfile.em
# but with some improvements regarding rviz, gazebo and a display

FROM ros:kinetic-robot-xenial

# update packages and install dependencies
RUN apt-get update && apt-get install -y \
    ros-kinetic-rviz \
    wget

# install Gazebo 7 
RUN sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'
RUN wget http://packages.osrfoundation.org/gazebo.key -O - | apt-key add -
RUN apt-get update && apt-get install -y \
    gazebo7 libignition-math2-dev \
    ros-kinetic-gazebo-ros-pkgs ros-kinetic-gazebo-ros-control \
    #ros-kinetic-ur-gazebo ros-kinetic-ur5-moveit-config \
    #ros-kinetic-ur-kinematics moveit_simple_controller_manager \
    && rm -rf /var/lib/apt/lists/*

# set missing environment variable needed to run Qt applications
ENV QT_X11_NO_MITSHM 1

# source bash
RUN source /opt/ros/kinetic/setup.bash

# IF catkin_ws is set in container instead of host
## set catkin workspace
#RUN mkdir catkin_ws/ && \
#    cd catkin_ws/ && \
#    mkdir src && \
#    catkin_make

# source bash
RUN source devel/setup.bash

