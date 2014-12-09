from RPIO import PWM
from color import Color

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

    def setRGB(self, rgbValues):
        
        try:
            self.setR(int(rgbValues["red"]))
        except:
            print "RGB error: red"
            pass
        
        try:
            self.setG(int(rgbValues["green"]))
        except:
            print "RGB error: green"
            pass
        
        try:
            self.setB(int(rgbValues["blue"]))
        except:
            print "RGB error: blue"
            pass
