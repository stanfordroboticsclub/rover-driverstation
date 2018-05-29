gnome-terminal -x bash -c 'ssh nvidia@192.168.1.10 /home/nvidia/catkin_ws/src/rover_vision/scripts/launchCameras.sh start $1 $2; exec bash'
sleep 3
gnome-terminal -x bash -c 'source /home/rover/catkin_ws/src/rover-driverstation/jsk_rqt_plugins/resource/command_scripts/cameraListener.sh start $1; exec bash'
