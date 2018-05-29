#!/bin/bash

cmd=$1
id=$2

if [ "$cmd" == "start" ]; then
    gst-launch-1.0 udpsrc port=500$id ! application/x-rtp,encoding-name=JPEG,payload=26 ! rtpjpegdepay ! jpegdec ! autovideosink &

    echo "$!" > /tmp/camera$id.pid
else
    pid=$(cat /tmp/camera$id.pid)
    kill pid
fi
