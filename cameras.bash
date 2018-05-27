#!/bin/bash

ssh nvidia@192.168.1.10 /home/nvidia/catkin_ws/src/rover_vision/scripts/launchCameras.sh

gst-launch-1.0 udpsrc port=5000 ! application/x-rtp,encoding-name=JPEG,payload=26 ! rtpjpegdepay ! jpegdec ! autovideosink

gst-launch-1.0 udpsrc port=5001 ! application/x-rtp,encoding-name=JPEG,payload=26 ! rtpjpegdepay ! jpegdec ! autovideosink

gst-launch-1.0 udpsrc port=5002 ! application/x-rtp,encoding-name=JPEG,payload=26 ! rtpjpegdepay ! jpegdec ! autovideosink

gst-launch-1.0 udpsrc port=5003 ! application/x-rtp,encoding-name=JPEG,payload=26 ! rtpjpegdepay ! jpegdec ! autovideosink
