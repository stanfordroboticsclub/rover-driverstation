# Stop cameras
sh /home/rover/catkin_ws/src/rover-driverstation/jsk_rqt_plugins/resources/command_scripts/camera_stop.sh 0
sh /home/rover/catkin_ws/src/rover-driverstation/jsk_rqt_plugins/resources/command_scripts/camera_stop.sh 1
sh /home/rover/catkin_ws/src/rover-driverstation/jsk_rqt_plugins/resources/command_scripts/camera_stop.sh 2

# Launch cameras
roslaunch rover_vision gscam.launch

# Take picture
rosservice call /hugin_panorama/image_saver_0/save
rosservice call /hugin_panorama/image_saver_1/save
rosservice call /hugin_panorama/image_saver_2/save

# Kill cameras
rosnode kill camera0
rosnode kill camera1
rosnode kill camera2

# Start cameras
sh /home/rover/catkin_ws/src/rover-driverstation/jsk_rqt_plugins/resources/command_scripts/camera_start.sh 0
sh /home/rover/catkin_ws/src/rover-driverstation/jsk_rqt_plugins/resources/command_scripts/camera_start.sh 1
sh /home/rover/catkin_ws/src/rover-driverstation/jsk_rqt_plugins/resources/command_scripts/camera_start.sh 2
