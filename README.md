# rover-driverstation
A repo to hold all scripts and files relating to visualization and control from the driverstation

## UI For ROS Service Calls
Building on top of jsk rqt plugins (https://github.com/jsk-ros-pkg/jsk_visualization).  

Some changes were made to work with the latest version of Qt.  

Also, need to clone jsk common messages (https://github.com/jsk-ros-pkg/jsk_common_msgs).

To add buttons for serivce calls, modify
jsk_rqt_plugins/resource/service_button_layout.yaml

Format of the yaml file should be:  
\- name: 'button name' (required)  
  image: 'path to image for icon' (optional)  
  image_size: 'width and height of icon' (optional)  
  service: 'service' (required)  
  column: 'column index' (optional, defaults to 0)  
