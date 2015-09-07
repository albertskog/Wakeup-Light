#!/usr/bin/python

import sys
import paho.mqtt.publish as mqtt

if len(sys.argv) == 1:
	print "No argument given"
	exit()

if len(sys.argv) == 2:
	red = sys.argv[1]
	green = sys.argv[1]
	blue = sys.argv[1]

if len(sys.argv) >= 4:
	red = sys.argv[1]
	green = sys.argv[2]
	blue = sys.argv[3]


command = '{{"red":{0}, "green":{1}, "blue":{2}}}'.format(red, green, blue)

print command

mqtt.single("lights/rgb", command, hostname="192.168.1.109")
