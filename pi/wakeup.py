import paho.mqtt.client as paho
from time import sleep
from sys import exit

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

step = 1
tick = 1

maxValue = 999
red = 0
green = 0
blue = 0

def clear():
    mqttc.publish("lights/r", 0)
    mqttc.publish("lights/g", 0)
    mqttc.publish("lights/b", 0)

clear()
state  = 1
while (1):
    # Red
    if (state == 1):
        red = red + step
        mqttc.publish("lights/r", red)
        # mqttc.publish("lights/g", i)
        # mqttc.publish("lights/b", i)
        if (red > 500): state = 2 

    # Orange -> white
    if (state == 2):
        red = red + step
        green = green + step
        mqttc.publish("lights/r", red)
        mqttc.publish("lights/g", green)
        # mqttc.publish("lights/b", i)
        if (red > 800): state = 3 

    # Blue
    if (state == 3):
        red = min(red + step, maxValue)
        green = min(green + step, maxValue)
        blue = min(blue + step, 500)
        mqttc.publish("lights/r", red)
        mqttc.publish("lights/g", green)
        mqttc.publish("lights/b", blue)
        if (green >= maxValue): break

    sleep(tick)

exit()