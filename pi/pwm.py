from RPIO import PWM

class Pwm:

	pulseIncrementUs = 5
	subCycleTime = 5000

	initialpulsewidth = 0
	minPulseWidth = 0
    maxPulseWidth = 999



	def __init__(self, gpioPin):

		# RPIO PWM initalization
		if (PWM.is_setup() == False):
	        PWM.setup(pulse_incr_us = pulseIncrementUs)

	    self.gpioPin    = gpioPin
        self.dutyCycle  = self.initialpulsewidth
        self.pwmChannel = getFreePwmChannel()

        PWM.init_channel(self.pwmChannel, subcycle_time_us = self.subCycleTime)




    def getFreePwmChannel(self):

		availableDmaChannels = {9, 10, 11}

		try:
			for channel in availableDmaChannels:
				if is_channel_initialized(channel) == False:
					return channel

			raise Exception("No uninitialized DMA channel available.")

		except Exception, exception:
			print exception
			exit(0)




    def __del__(self):
        PWM.cleanup()  



    def setPulseWidth(self, pulseWidth):
        # Sanity checking on the pulse
        pulseWidth = min(max(pulseWidth, self.minPulseWidth), self.maxPulseWidth)

        # Flip the range on the pulse width because we are working with common anode LEDs
        #self.pulseWidth  = self.maxPulseWidth - pulseWidth

        # Remove old pulse
        #PWM.clear_channel_gpio(self.pwmChannel, self.gpioPin)

        # Add new pulse
        PWM.add_channel_pulse(self.pwmChannel, self.gpioPin, self.pulseStart, pulseWidth)
