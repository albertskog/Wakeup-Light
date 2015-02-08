from pwm import Pwm

class RGB:

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

    def __init__(self):

                
        self.red    = Pwm(self.gpioRed)
        self.green  = Pwm(self.gpioGreen)
        self.blue   = Pwm(self.gpioBlue)

        # Time between each fade step
        self.fadeTickSeconds = 1

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

        # Red
        if (self.fadeState == 1):
            self.color["red"] = self.color["red"] + self.step
            
            if (self.color["red"] > 500): self.fadeState = 2 

        # Orange -> white
        if (self.fadeState == 2):
            # Red from 500 -> 800
            self.color["red"] = self.color["red"] + self.step
            # Green from 0 -> 300
            self.color["green"] = self.color["green"] + self.step

            if (self.color["red"] > 800): self.fadeState = 3 

        # White
        if (self.fadeState == 3):

            self.color["red"]   = min(self.color["red"]   + self.step, self.maxValue)
            self.color["green"] = min(self.color["green"] + self.step, self.maxValue)
            self.color["blue"]  = min(self.color["blue"]  + self.step, self.maxValue)

            if (self.color["green"] >= self.maxValue): self.fadeState = 4

        # 2. Then send that color...
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
