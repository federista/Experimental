#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist

def main():
    """
    This main function will initialize the node
    Publish: publishing to topic : /turtle1/cmd_vel
    publishes a pre defined coordinates to acquire its sleeping behaviour
    
    Returns:
        Send the robot to a sleeping state
    """
    
    rospy.init_node("sleep1", anonymous=True)
    pub = rospy.Publisher("/turtle1/cmd_vel", Twist, queue_size =  10)
    rate = rospy.Rate(1)
    
    while not rospy.is_shutdown():
       
        msg1 = Twist()
	print("Sleeping behaviour : Reached a predefined location")
        #x = input("enter the value of x: ")
        #z = input("enter the value of z: ")
        
        msg1.linear.x = 5
	msg1.angular.z = 0.5
	pub.publish(msg1)
	rospy.spin()

if __name__ == "__main__":
    try:
    	main()
    except rospy.ROSInterruptException:
	pass
