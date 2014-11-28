import paho.mqtt.client as paho
from time import sleep
from sys import exit
from sys import argv
import json

# Callbacks for MQTT events

# This callback runs when a connection to the broker is established
def on_connect(mosq, obj, rc):
    #mosq.subscribe("$SYS/#", 0)
    print("rc: "+str(rc))
    # Subscribe on connect in case connection is lost!
    mqttc.subscribe("wakeup/#", 0)

# This callback runs every time a message is 
# published on the que we are subscribed to
def on_message(mosq, obj, msg):
    print("Message received on topic "+msg.topic+" with QoS "+str(msg.qos)+" and payload "+msg.payload)

    try:
        # Read in the JSON payload
        payload = json.loads(msg.payload)
    
        # Check the topic and act accordingly

        if (msg.topic == "wakeup/state"):

            if (payload["state"] == "start" or payload[state] == 1):

                print "start wakeup"
                state = 1

            if (payload["state"] == "stop" or payload[state] == 0):

                print "stop wakeup"
                state = 4

        else if (msg.topic == "wakeup/time"):
            
            print "Setting fade time is not yet supported"

        else if (msg.topic == "wakeup/alarm"):

            print "Setting alarm time is not yet supported"
    
    except:
    
        print "JSON error"
        pass

# This callbak runs every time we publish a message to the broker
def on_publish(mosq, obj, mid):
    #print("mid: "+str(mid))
    return

# This callback runs when we subscribe to a topis
def on_subscribe(mosq, obj, mid, granted_qos):
    print("Subscribed: "+str(mid)+" "+str(granted_qos))

# This callback runs on a logging event
def on_log(mosq, obj, level, string):
    print(string)

# The destructor should stop the subscriber so that 
# we are no longer connected to the broker
def __del__(self):
	print "Exiting..."
	mqttc.loop_stop();


# Main initioalisations
mqttc = paho.Client()
mqttc.connect("192.168.1.112")
mqttc.on_message = on_message
mqttc.on_connect = on_connect
mqttc.on_publish = on_publish
mqttc.on_subscribe = on_subscribe
mqttc.loop_start()

# Optionally set the tick and fade time if those 
# were supplied as parameters (useful for debugging)
if (len(argv) == 3):
    step = int(argv[1])
    tick = float(argv[2])
else:
    step = 1
    tick = 1

# step = 1
# tick = 1

# The maximum value of any color
maxValue = 999

# Maximum value for blue
maxBlue  = 700

# List of colors to send to the lights
color    = { "red": 0, "green": 0, "blue": 0 }

# Function to send color to the lights
def updateColor():
    mqttc.publish("lights/rgb", json.dumps(color))

# Function to turn off all colors
def clear():
    color["red"]    = 0
    color["green"]  = 0
    color["blue"]   = 0
    updateColor();

# Start by turning the light off (useful for debugging)
clear()

# A state variable to determine where we are in the color fade
state  = 0

# Run the fade until it finnishes or is stopped
while (1):
    # 1. First get a new color depending on state...
    
    # Red
    if (state == 1):

        color["red"] = color["red"] + step
        
        if (color["red"] > 500): state = 2 

    # Orange -> white
    if (state == 2):

        color["red"] = color["red"] + step
        color["green"] = color["green"] + step

        if (color["red"] > 800): state = 3 

    # White
    if (state == 3):

        color["red"] = min(color["red"] + step, maxValue)
        color["green"] = min(color["green"] + step, maxValue)
        color["blue"] = min(color["blue"] + step, maxBlue)

        if (color["green"] >= maxValue): state = 4

    # Final state, exit
    if (state == 4):
        break;

    # 2. Then send that color...
    updateColor()

    # 3. Finally, wait for the next update
    sleep(tick)

# The wakeup sequence is finished or was aborted.
# Simply stop what we were doing and exit. 
mqttc.loop_stop()
exit()