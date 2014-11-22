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
mqttc.connect("192.168.1.133")
mqttc.on_message = on_message
mqttc.on_connect = on_connect
mqttc.on_publish = on_publish
mqttc.on_subscribe = on_subscribe
mqttc.loop_start()

tick = 0.1

mqttc.publish("lights/r", 0)
mqttc.publish("lights/g", 0)
mqttc.publish("lights/b", 0)

# Fade in blue
#for i in range(0, 200):
#    mqttc.publish("lights/b", i)
#    sleep(tick)

# Add red
#for i in range(0, 200):
#    mqttc.publish("lights/r", i)
#    sleep(tick)

# Add more red, remove blue
#for i in range(200, 400):
#    mqttc.publish("lights/r", i)
#    mqttc.publish("lights/b", 400-i)
#    sleep(tick)

# Start adding green to make orange. Also start adding blue back to make white
#for i in range(400, 800):
    # mqttc.publish("lights/r", i)
    # mqttc.publish("lights/g", i)
    # mqttc.publish("lights/b", i-400)
    # sleep(tick)

# Go to white
# for i in range(800, 999):
#     mqttc.publish("lights/r", i)
#     mqttc.publish("lights/g", i)
#     mqttc.publish("lights/b", i-400)
#     sleep(tick) 

# # Add in the last blue
# for i in range(999-400, 999):
#     mqttc.publish("lights/b", i)
#     sleep(tick)

for i in range(0, 999, 10):
    mqttc.publish("lights/r", i)
    mqttc.publish("lights/g", i)
    mqttc.publish("lights/b", i)
    sleep(tick) 