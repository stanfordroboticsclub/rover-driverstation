gnome-terminal -x bash -c "echo ./launchCameras.sh; ssh nvidia@192.168.1.10 /home/nvidia/catkin_ws/src/rover_vision/scripts/launchCameras.sh stop $1; exec bash"
gnome-terminal -x bash -c "echo ./cameraListener.sh; source /home/rover/catkin_ws/src/rover-driverstation/jsk_rqt_plugins/resource/command_scripts/cameraListener.sh stop $1; exec bash"
