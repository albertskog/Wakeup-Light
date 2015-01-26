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

    # -- Fade settings --
    # A state variable to determine where we are in the color fade
    fadeState = 0
    # Number of steps to ad each fade
    step  = 1
    # The maximum value of any color
    maxValue = 999
    # List of colors to send to the lights
    color    = { "red": 0, "green": 0, "blue": 0 }
    # Number of steps in the fading sequence
    fadeSteps = 1100

    def __init__(self):

        # Initialize DMA PWM
        PWM.setup(pulse_incr_us = 5)
        
        self.color = {"red": 0, "green": 0, "blue": 0} 

        self.red    = Color(self.pwmChannelRed,   self.gpioRed,   self.startValueRed)
        self.green  = Color(self.pwmChannelGreen, self.gpioGreen, self.startValueGreen)
        self.blue   = Color(self.pwmChannelBlue,  self.gpioBlue,  self.startValueBlue)

        # Time between each fade step
        self.fadeTickSeconds = 1
    
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

    # Run the fade until it finnishes or is stopped
    def fade(self):
        # 1. First get a new color depending on fadeState...
        
        #if (self.fadeState == 0): #do nothing!
        red    = {"red": 500, "green": 0, "blue": 0}
        orange = {"red": 800, "green": 300, "blue": 0}
        white  = {"red": 999, "green": 999, "blue": 999}
        fadeList = [red, orange, white]

        
        if (self.fadeState != 0):

            keepState = false

            for color in self.color:
                self.color[color] = min( self.color[color] + self.step, fadeList[self.fadeState][color] )

                if ( (self.color[color] < fadeList[self.fadeState][color]) ):
                    keepState = true

            if (keepState == false):
                self.fadeState = self.fadeState + 1


            # 2. Set the colors...
            self.setR(self.color["red"])
            self.setG(self.color["green"])
            self.setB(self.color["blue"])


            # Final fadeState, clear colors and return to state 0
            if (self.fadeState == 4):
                self.fadeState = 0
                # reset colors for next wakeup
                self.clear()

        

        # Function to turn off all colors
    def clear(self):
        self.color["red"]    = 0
        self.color["green"]  = 0
        self.color["blue"]   = 0