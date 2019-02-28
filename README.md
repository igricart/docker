# Repository for Robotics learning purposes
The main goal is to obtain Gazebo, Ros Kinetic and Rviz under the same container and control manipulators and drones.

## Install Docker

Follow instruction from [Docker](https://docs.docker.com/install/)

## Universal Robot
To use this image use 

`$ docker run -it --net=host --env="DISPLAY" -v="$HOME/PATH/TO/HOST/FOLDER:/CONTAINER/FOLDER" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" --device=/dev/dri:/dev/dri --rm igricart/ros_gazebo:universal_robot`
 
 The software first will check if this image is available on your computer and since it wasn’t it downloaded the image from Docker Hub. So getting an image from Docker Hub works sort of automatically. 
MoveIt, Gazebo, RViz and Ros Kinetic are already set to use and GUI applications will be working just fine (hopefully).

To launch the simulated arm and a controller for it, run:

`$ roslaunch ur_gazebo ur5.launch`

and in another terminal:

`$ roslaunch ur5_moveit_config ur5_moveit_planning_execution.launch sim:=true`

To control the simulated arm from RViz, also run:

`$ roslaunch ur5_moveit_config moveit_rviz.launch config:=true`

## Drone


### References
[Running GUI Applications insider docker containers](https://medium.com/@SaravSun/running-gui-applications-inside-docker-containers-83d65c0db110)

[Universal Robot Git](https://github.com/ros-industrial/universal_robot)
