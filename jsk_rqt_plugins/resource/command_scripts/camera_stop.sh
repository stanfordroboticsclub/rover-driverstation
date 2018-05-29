gnome-terminal -x bash -c 'ssh nvidia@192.168.1.10 /home/nvidia/catkin_ws/src/rover_vsiion/scripts/launchCameras.sh stop $1' &
gnome-terminal -x bash -c 'source /home/rover/catkin_ws/src/rover-driverstation/jsk_rqt_plugins/resource/command_scripts/cameraListener.sh stop $1' &
