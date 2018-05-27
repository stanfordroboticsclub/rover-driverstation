rosparam set hugin_panorama/image camera0/camera/image
rosservice call /hugin_panorama/image_saver/save
rosparam set hugin_panorama/image camera1/camera/image
rosservice call /hugin_panorama/image_saver/save
