import paho.mqtt.client as paho
from time import sleep
from sys import exit
from sys import argv
import json

# Callbacks for MQTT events

def on_connect(mosq, obj, rc):
    #mosq.subscribe("$SYS/#", 0)
    print("rc: "+str(rc))
    # Subscribe on connect in case connection is lost!
    mqttc.subscribe("lights/wakeup", 0)

def on_message(mosq, obj, msg):
    print("Message received on topic "+msg.topic+" with QoS "+str(msg.qos)+" and payload "+msg.payload)

    if (msg == 1):
    	exit()


def on_publish(mosq, obj, mid):
    #print("mid: "+str(mid))
    return

def on_subscribe(mosq, obj, mid, granted_qos):
    print("Subscribed: "+str(mid)+" "+str(granted_qos))

def on_log(mosq, obj, level, string):
    print(string)

def __del__(self):
	print "Exiting..."
	mqttc.loop_stop();



mqttc = paho.Client()
mqttc.connect("192.168.1.112")
mqttc.on_message = on_message
mqttc.on_connect = on_connect
mqttc.on_publish = on_publish
mqttc.on_subscribe = on_subscribe
mqttc.loop_start()

# if (len(argv) == 2):
#     step = int(argv[0])
#     tick = float(argv[1])
# else:
#     step = 1
#     tick = 1

step = 1
tick = 1

maxValue = 999
color = { "red": 0, "green": 0, "blue": 0 }

def updateColor():
    mqttc.publish("lights/rgb", json.dumps(color))

def clear():
    color["red"]    = 0
    color["green"]  = 0
    color["blue"]   = 0
    updateColor();



clear()
state  = 1
while (1):
    # Red
    if (state == 1):

        color["red"] = color["red"] + step
        
        if (color["red"] > 500): state = 2 

    # Orange -> white
    if (state == 2):

        color["red"] = color["red"] + step
        color["green"] = color["green"] + step

        if (color["red"] > 800): state = 3 

    # Blue
    if (state == 3):

        color["red"] = min(color["red"] + step, maxValue)
        color["green"] = min(color["green"] + step, maxValue)
        color["blue"] = min(color["blue"] + step, 700)

        if (color["green"] >= maxValue): break

    updateColor()
    sleep(tick)

mqttc.loop_stop()
exit()