#!/usr/bin/env python
import rospy
from numpy import random
import time
from geometry_msgs.msg import Twist

def random_move():
    """
    This functions publishes to a topic "/turtle1/cmd_vel"
    Publish randomly generated values in the defined range to the topic 

    Return:
	Robot swims randomly in the defined space
    """

    rospy.init_node("random1", anonymous = True)
    ran = rospy.Publisher("/turtle1/cmd_vel", Twist, queue_size =  10)

    rate = rospy.Rate(1)

    while not rospy.is_shutdown():
	msg = Twist()
	msg.linear.x = random.uniform(4, 6)
	msg.angular.z = 2* random.uniform(0, 0.5) / random.uniform(0, 0.5) 
	ran.publish(msg)

if __name__ == "__main__":
    try:
	random_move()
    except rospy.ROSInterruptException:
	pass

