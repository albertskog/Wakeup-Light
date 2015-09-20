import paho.mqtt.client as paho
import json
from time import sleep
from rgb import RGB
from periodicTask.PeriodicTask import PeriodicTask


# Callbacks for MQTT events

def on_connect(mosq, obj, rc):
    # mosq.subscribe("$SYS/#", 0)
    print("rc: " + str(rc))
    # Subscribe on connect in case connection is lost!
    client.subscribe("lights/#", 0)
    client.subscribe("wakeup/#", 0)


def on_message(mosq, obj, msg):

    print(
        "Message received on topic " + msg.topic + " with QoS " +
        str(msg.qos) + " and payload " + msg.payload)

    # lights topic
    if (str(msg.topic) == "lights/rgb"):
        rgb.setRGB(json.loads(msg.payload))

    if (str(msg.topic) == "lights/r"):
        rgb.setR(int(msg.payload))

    if (str(msg.topic) == "lights/g"):
        rgb.setG(int(msg.payload))

    if (str(msg.topic) == "lights/b"):
        rgb.setB(int(msg.payload))

    # wakeup topics
    if (str(msg.topic)[:len("wakeup/")] == "wakeup/"):
        print "wakeup/"

        try:
            # Read in the JSON payload
            payload = json.loads(msg.payload)
            print payload

            # Check the topic and act accordingly

            if (str(msg.topic) == "wakeup/state"):
                print "wakeup/state"

                if (str(payload["state"]) == "start"):

                    if ("wakeupTimeMinutes" in payload):
                        fadeTask.periodSec = float(payload["wakeupTimeMinutes"]) * 60 / 1100
                        print "fadeTickSeconds: {}".format(fadeTask.periodSec)

                    print "start wakeup"

                    # Start fade unless it is already running
                    if (not(fadeTask.isRunning)):
                        fadeTask.start()

                elif (str(payload["state"]) == "stop"):

                    print "stop wakeup"
                    fadeTask.cancel()

            elif (str(msg.topic) == "wakeup/time"):
                # Fade time in seconds
                fadeTimeSeconds = payload["fadeTimeMinutes"] * 60
                # Total number of steps / total number of seconds = time between ticks
                fadeTickSeconds = float(rgb.fadeSteps) / fadeTimeSeconds
                # Save to RGB object
                rgb.fadeTickSeconds = fadeTickSeconds

                print "set fadeTickSeconds: {}".format(fadeTickSeconds)

            elif (str(msg.topic) == "wakeup/alarm"):

                print "Setting alarm time is not yet supported"

        except Exception, e:
            print "JSON error"
            print e
            pass


def on_publish(mosq, obj, mid):
    print("mid: " + str(mid))


def on_subscribe(mosq, obj, mid, granted_qos):
    print("Subscribed: " + str(mid) + " " + str(granted_qos))


def on_log(mosq, obj, level, string):
    print(string)


print("init")

# Create RGB object to control the leds
rgb = RGB()

# Create a periodic task to do the fading
fadeTask = PeriodicTask(periodSec=1, task=rgb.fade)

# Setup callbacks and the connection to the broker
client = paho.Client()
client.on_message = on_message
client.on_connect = on_connect
client.on_publish = on_publish
client.on_subscribe = on_subscribe
# client.username_pw_set(username="",password="")
client.connect("localhost")
client.loop_start()

while(1):
    sleep(1)
