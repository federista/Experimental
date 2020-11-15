#! /usr/bin/env python

import rospy
from experimental_ass.msg import string_message
from numpy import random
import time
from geometry_msgs.msg import Twist

def main():
    """
    This main() function will publish to a topic after recieving a signal from the user

    Input:
	String message from user i-e PLAY or play

    Return:
	Move to the location of the person
	Goes to the location pointed by user, comes back and so and forth
	Returns to normal behaviour after some time
    """
	
    rospy.init_node("publisher", anonymous=True)
    rate = rospy.Rate(1)
    message = string_message()

    answer = str(raw_input("enter command: "))
    


    if answer == "play" or answer == "PLAY":
	play2 = rospy.Publisher("/turtle1/cmd_vel", Twist, queue_size =  10)
        rate = rospy.Rate(1)
    
    while not rospy.is_shutdown():
	msg = Twist()
	msg.linear.x = 3.0
	msg.angular.z = 0.5
	print("Reached location of a person")
	play2.publish(msg)
	
	time.sleep(5.0)
	
	msg.linear.x = 0
	msg.angular.z = 0

	print("waiting for pointing gesture")
	time.sleep(2.0)

	print("go to pointed location")
	msg.linear.x = 10
	msg.angular.z = 0.5
	time.sleep(10.0)

	
	#rospy.spin()

        


if __name__ == "__main__":
    main()
