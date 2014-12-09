import paho.mqtt.client as paho
import json
from rgb import RGB

# Callbacks for MQTT events

def on_connect(mosq, obj, rc):
    #mosq.subscribe("$SYS/#", 0)
    print("rc: "+str(rc))
    # Subscribe on connect in case connection is lost!
    client.subscribe("lights/#", 0)

def on_message(mosq, obj, msg):

    print("Message received on topic "+msg.topic+" with QoS "+str(msg.qos)+" and payload "+msg.payload)

    if ( str(msg.topic) == "lights/rgb" ):
        rgb.setRGB(json.loads(msg.payload))
    
    if ( str(msg.topic) == "lights/r" ):
        rgb.setR(int(msg.payload))

    if ( str(msg.topic) == "lights/g" ):
        rgb.setG(int(msg.payload))

    if ( str(msg.topic) == "lights/b" ):
        rgb.setB(int(msg.payload))


def on_publish(mosq, obj, mid):
    print("mid: "+str(mid))

def on_subscribe(mosq, obj, mid, granted_qos):
    print("Subscribed: "+str(mid)+" "+str(granted_qos))

def on_log(mosq, obj, level, string):
    print(string)

#PWM.setup()
#PWM.init_channel(0, 10000)

print("init")

rgb = RGB()
#rgb.setR(50)
client = paho.Client()
client.on_message = on_message
client.on_connect = on_connect
client.on_publish = on_publish
client.on_subscribe = on_subscribe
#client.username_pw_set(username="robot",password="hejdu46ja1!")
client.connect("192.168.1.112")
#client.subscribe("lights/#", 0)
client.loop_forever()
