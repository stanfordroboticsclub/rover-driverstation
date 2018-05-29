#!/bin/bash

cmd=$1
id=$2

function killPrevious {
    pid=$(cat /tmp/camera$id.pid)
    echo "Now killing $pid"
    kill $pid
    rm /tmp/camera$id.pid
}

if [ "$cmd" == "start" ]; then
    if [ -e /tmp/camera$id.pid ];then
	killPrevious
    fi
    
    gst-launch-1.0 udpsrc port=500$id ! application/x-rtp,encoding-name=JPEG,payload=26 ! rtpjpegdepay ! jpegdec ! autovideosink &

    echo "$!" > /tmp/camera$id.pid
else
    killPrevious
fi
