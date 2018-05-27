# rover-driverstation
A repo to hold all scripts and files relating to visualization and control from the driverstation

## UI For ROS Service Calls
- Building on top of jsk rqt plugins (https://github.com/jsk-ros-pkg/jsk_visualization).  
- Some changes were made to work with the latest version of Qt.  
- Also, need to clone jsk common messages (https://github.com/jsk-ros-pkg/jsk_common_msgs).

### Installation
1. Clone this repo AND submodules:  
-git clone --recurse-submodules https://github.com/stanfordroboticsclub/rover-driverstation.git 

### Current Usage
1. Service Calls: rosrun jsk_rqt_plugins rqt_service_buttons  
2. Commands: rosrun jsk_rqt_plugins rqt_command_buttons  

To add buttons for serivce calls, modify
jsk_rqt_plugins/resource/service_button_layout.yaml

Format of the yaml file should be:  
\- name: 'button name' (required)  
  image: 'path to image for icon' (optional)  
  image_size: 'width and height of icon' (optional)  
  service: 'service' (required)  
  column: 'column index' (optional, defaults to 0)  

To add buttons for commands, modify
jsk_rqt_plugins/resource/command_button_layout.yaml

Format of the yaml file should be:  
\- name: 'button name' (required)  
  image: 'path to image for icon' (optional)  
  image_size: 'width and height of icon' (optional)  
  command: 'command' (required)  
  column: 'column index' (optional, defaults to 0)  

Suppose you have a command that has a stream of output.  
You can create a shell script that opens a new terminal and runs the desired command. An example of this is 
jsk_rqt_plugins/resource/command_scripts/test.sh  
Then, you can create a button whose command is running this shell script.
