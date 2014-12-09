import paho.mqtt.client as paho
import json
from time import time
from rgb import RGB

# Callbacks for MQTT events

def on_connect(mosq, obj, rc):
    #mosq.subscribe("$SYS/#", 0)
    print("rc: "+str(rc))
    # Subscribe on connect in case connection is lost!
    client.subscribe("lights/#", 0)
    client.subscribe("wakeup/#", 0)

def on_message(mosq, obj, msg):

    print("Message received on topic "+msg.topic+" with QoS "+str(msg.qos)+" and payload "+msg.payload)

    # lights topic
    if ( str(msg.topic) == "lights/rgb" ):
        rgb.setRGB(json.loads(msg.payload))
    
    if ( str(msg.topic) == "lights/r" ):
        rgb.setR(int(msg.payload))

    if ( str(msg.topic) == "lights/g" ):
        rgb.setG(int(msg.payload))

    if ( str(msg.topic) == "lights/b" ):
        rgb.setB(int(msg.payload))

    # wakeup topics
    if (str(msg.topic)[:len("wakeup/")] == "wakeup/"):
        print "wakeup/"

        try:
            # Read in the JSON payload
            payload = json.loads(msg.payload)
            print payload

            # Check the topic and act accordingly

            if ( str(msg.topic) == "wakeup/state" ):
                print "wakeup/state"

                if ( str(payload["state"]) == "start" or int(payload["state"]) == 1 ):

                    print "start wakeup"
                    rgb.fadeState = 1

                elif ( str(payload["state"]) == "stop" or int(payload["state"]) == 0 ):

                    print "stop wakeup"
                    rgb.fadeState = 4

            elif ( str(msg.topic) == "wakeup/time" ):
                
                print "Setting fade time is not yet supported"

            elif ( str(msg.topic) == "wakeup/alarm" ):

                print "Setting alarm time is not yet supported"
        
        except Exception, e:
            print "JSON error"
            print e
            pass

def on_publish(mosq, obj, mid):
    print("mid: "+str(mid))

def on_subscribe(mosq, obj, mid, granted_qos):
    print("Subscribed: "+str(mid)+" "+str(granted_qos))

def on_log(mosq, obj, level, string):
    print(string)


print("init")

# Create RGB object to control the leds
rgb = RGB()

# Setup callbacks and the connection to the broker
client = paho.Client()
client.on_message = on_message
client.on_connect = on_connect
client.on_publish = on_publish
client.on_subscribe = on_subscribe
#client.username_pw_set(username="",password="")
client.connect("192.168.1.112")
# client.loop_start()


tick = 1
lastTime = time()

while(1):
    client.loop()

    # Do next fade step if needed
    if (rgb.fadeState != 0):
        if (time() - lastTime >= tick):
            lastTime = time()
            rgb.fade()
        
    


