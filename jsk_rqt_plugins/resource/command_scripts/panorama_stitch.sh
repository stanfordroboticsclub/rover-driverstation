rosservice call /hugin_panorama/stitch
scp nvidia@192.168.1.10:~/images/output.png /home/rover/panoramas
xdg-open /home/rover/panoramas/output.png
