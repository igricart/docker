#!/bin/bash

# --device -> usage to workaround openGL problem
# --rm -> avoid container flood
# --it -> TTY + STDIN
docker run -it --net=host --env="DISPLAY" -v="$HOME/git/docker/docker_cat_ws:/docker_cat_ws" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" --device=/dev/dri:/dev/dri --rm igricart/ros_gazebo:develop
