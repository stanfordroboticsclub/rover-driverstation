rosparam set hugin_panorama/image camera/image_raw_1
rosservice call /hugin_panorama/image_saver/save
rosparam set hugin_panorama/image camera/image_raw_2
rosservice call /hugin_panorama/image_saver/save
