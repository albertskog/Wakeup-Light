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
