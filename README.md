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

The parameter "wakeupTime" may optionally be passed to set the duration of the wakeup sequence.

Syntax:

	{
		"state": "start",
		"wakeupTimeMinutes": 30
	}

Alternative:

	{
		"state": 1
	}

###wakeup/time
A JSON object published on this topic sets the time it takes to perform the fading sequence. Syntax:

	{
		"wakeupTimeMinutes": 25
	}

###wakeup/alarm
A JSON object published on this topic sets the time for the wakeup sequence to start. This is an alternative to starting the sequence manually. The content will be parsed into a cronjob so comma separation can be used to add several values and "*" means "every". Syntax:

	{
		"hour":   "7", 
		"minute": "30", 
		"day": 	  "1, 2, 3, 4, 5",
		"month":  "*"
	}


#Installing

###Basics

	sudo apt-get install git screen man python-pip python-dev

###Mosquitto MQTT Broker
Get the latest version from their repository
([http://mosquitto.org/2013/01/mosquitto-debian-repository/](http://mosquitto.org/2013/01/mosquitto-debian-repository/))

```
wget http://repo.mosquitto.org/debian/mosquitto-repo.gpg.key
sudo apt-key add mosquitto-repo.gpg.key
cd /etc/apt/sources.list.d/
sudo wget http://repo.mosquitto.org/debian/mosquitto-stable.list
sudo apt-get update
sudo apt-get install mosquitto
```

###Paho MQTT Python library
([http://mosquitto.org/documentation/python/](http://mosquitto.org/documentation/python/))

	pip install paho-mqtt


###Raspberry GPIO

	pip install RPIO

