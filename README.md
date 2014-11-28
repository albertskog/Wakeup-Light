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
A JSON object published on this topic sets all the colors at once. The key "fadeTimeMs" is optional and makes a fade from the previously set color to the new one in the time specified. Syntax:

	{
		"red":        500, 
		"green":      300, 
		"blue":       100,
		"fadeTimeMs": 1000
	}

###wakeup/state
A JSON object published on this topic sets the current state of the wakeup light sequence. Stopping the sequence while running will keep the last light setting.

States may be one of the following:

- "start" or 1
- "stop" or 0

Syntax:

	{
		"state": "start"
	}

Alternative:

	{
		"state": 1
	}

###wakeup/time
A JSON object published on this topic sets the time it takes to perform the fading sequence. Syntax:

	{
		"fadeTimeMinutes": 25
	}

###wakeup/alarm
A JSON object published on this topic sets the time for the wakeup sequence to start. This is an alternative to starting the sequence manually. The content will be parsed into a cronjob so comma separation can be used to add several values and "*" means "every". Syntax:

	{
		"hour":   "7", 
		"minute": "30", 
		"day": 	  "1, 2, 3, 4, 5",
		"month":  "*"
	}
