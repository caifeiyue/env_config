#!/bin/bash
# Install NVIDIA Driver
# laocai, Aug 28 2018

service lightdm stop
/home/cai/software/NVIDIA-Linux-x86_64-390.48.run -no-opengl-files
service lightdm start
