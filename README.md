# Experimental

## Authors
* ZAID : zaidrafi107@gmail.com

## Introduction
This repository contains a profound and simple approach towards controlling a Robot in a 2D enviroment. The Robot will move in the enviroment based on Predefined 3 behviours.
* Sleep
* Normal
* Play


## Contents of the repository
In this section we will explain the repository's content.

### Msg
This folder contains a file "string_message". It is a customized genreated .msg file for asking the user for an input "PLAY" to initialize the play behaviour of the robot.

### Launch
A launch file for launching the 3 nodes for the respective behaviours
### Src
Source folder that contains all the scripts
* gotogoal.py (Python script that ask the user for Goal's Coordinates)
* play.py (Script that asks user for commmand to Initializaing the Play behaiviour of Robot in a 2D enviroment)
* Sleeping.py (Running this script will send the Robot to Sleep state)
* RANDOM (Folder containing a file "Weird_movment" that enables the Robot to swim randommly in given enviroment)

The purpose of setting this file into a seperate directory is to make the Python recognize the "random" library for publishng random values to a topic "/turtle1/cmd_vel"

### Project_documentation
This folder contains doxygen documntation of the project

## Installation
The first thing to do, after having cloned the repository in the Ros workspace, is to build the package and install in order to make the files executable, using the following commands in the workspace:
   
   
    catkin_make
    catkin_make install
    
Execute the following commands for Ros related Python libraries     
   
   
	sudo apt-update
	sudo apt install python3-pip
    sudo apt-get install python3-yaml	
    sudo pip3 install rospkg catkin-pkg 
    sudo apt-get install ros-$(rosversion -d)-turtlesim
   
    
  * This will install Ros related python libraries and Turtlesim Simulator
 
 To initialize the simulator 
      
	rosrun turtlesim turtlesim_node  
    
 Before running the python scripts, remember two things
 * Setup your bash file. It can be done by going to root directory of your catkin_ws and use the following command in the terminal
    ```
    
    source devel/setup.bash
    
 * Add file path to your Bashrc. Go to homw directory, enable the hidden files. You will see a file " .bashrc" . At the bottom of the file add your file path. For example if your workspace goes by the name of catkin_ws. Add the following line
    
    ```
    source /home/zaid/catkin_ws/devel
    
To run the system:
    
    rosrun exmperimental_ass "node_name.py"
    

### Future Technical Improvements
This repository holds a wide range of options for technical improvements
* Design a launch file.
* Avoid hiitng the boundry of 2D enviroment during random swimming of the robot of the "Normal Behaviour".
* Integration of all the scripts into one single script that not only improve the beauty of the code but also the compatibility and perfomance.
* Implementation of more than 3 behaviours.
* Advancement to 3D enviroments and using a customized enviroment that enables the robot to control its navigation autonomously.
* Designing of an Architecture for better understanding of the repository.
