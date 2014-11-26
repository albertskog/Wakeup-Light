#Raspberry Pi Wakeup-Light
This is the readme.

#MQTT API
###lights/r
A single integer value from 0 to 999 posted (as string) on this topic sets the red pulse width accordingly.

###lights/g
A single integer value from 0 to 999 posted (as string) on this topic sets the green pulse width accordingly.

###lights/b
A single integer value from 0 to 999 posted (as string) on this topic sets the blue pulse width accordingly.

###lights/rgb
A JSON object published on this topic sets all the colors at once. Syntax:

	{
		"red": 0, 
		"green": 0, 
		"blue": 0
	}