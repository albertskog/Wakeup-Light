import paho.mqtt.client as paho
from RPIO import PWM

class Color:

    subCycleTime    = 5000
    pulseStart      = 0

    # For sanity checking pulse width
    minPulseWidth   = 0
    maxPulseWidth   = 999

    def __init__(self, pwmChannel, gpioPin, pulseWidth):

        self.pwmChannel = pwmChannel
        self.gpioPin    = gpioPin
        self.pulseWidth = pulseWidth

        # Initialize DMA channel
        PWM.init_channel(self.pwmChannel, subcycle_time_us = self.subCycleTime)
        
        # Setup initial pulse
        PWM.add_channel_pulse(self.pwmChannel, self.gpioPin, self.pulseStart, self.pulseWidth)


    def setPulseWidth(self, pulseWidth):
        # Sanity checking on the pulse
        pulseWidth = min(max(pulseWidth, self.minPulseWidth), self.maxPulseWidth)
        print pulseWidth

        # Flip the range on the pulse width because we are working with common anode LEDs
        #self.pulseWidth  = self.maxPulseWidth - pulseWidth

        # Remove old pulse
        #PWM.clear_channel_gpio(self.pwmChannel, self.gpioPin)

        # Add new pulse
        PWM.add_channel_pulse(self.pwmChannel, self.gpioPin, self.pulseStart, pulseWidth)

        print "Pulse width: {}".format(pulseWidth)

class RGB:
    pwmChannelRed   = 11
    pwmChannelGreen = 9
    pwmChannelBlue  = 10

    gpioRed         = 17
    gpioGreen       = 22
    gpioBlue        = 27

    startValue      = 0
    startValueRed   = startValue
    startValueGreen = startValue
    startValueBlue  = startValue

    def __init__(self):

        # Initialize DMA PWM
        PWM.setup(pulse_incr_us = 5)
        
        self.red    = Color(self.pwmChannelRed, self.gpioRed, self.startValueRed)
        self.green  = Color(self.pwmChannelGreen, self.gpioGreen, self.startValueGreen)
        self.blue   = Color(self.pwmChannelBlue, self.gpioBlue, self.startValueBlue)
    
    def __del__(self):
        PWM.cleanup()        

    def setR(self, pulseWidth):
        self.red.setPulseWidth(pulseWidth)

    def setG(self, pulseWidth):
        self.green.setPulseWidth(pulseWidth)

    def setB(self, pulseWidth):
        self.blue.setPulseWidth(pulseWidth)



# Callbacks for MQTT events

def on_connect(mosq, obj, rc):
    #mosq.subscribe("$SYS/#", 0)
    print("rc: "+str(rc))
    # Subscribe on connect in case connection is lost!
    client.subscribe("lights/#", 0)

def on_message(mosq, obj, msg):
    #lights = {'lights/r': 17, 'lights/g': 18, 'lights/b': 27, 'lights/d': '4'}

    print("Message received on topic "+msg.topic+" with QoS "+str(msg.qos)+" and payload "+msg.payload)

    
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
