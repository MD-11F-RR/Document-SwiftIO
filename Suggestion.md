# **SUGGESTIONS**

# 1\. Suggestions to the DigitalOut class

- [ ] make the "value" member variable private
- [ ] make the "direction" member enum private

# 2\. Suggestions to the DigitalIn class

- [ ] make the "value" member variable private
- [ ] remove the "direction" member enum, it's not necessary
- [ ] add in interrupt enable/disable switch
- [ ] add in interrupt modify function

# 3\. I2C

- [ ] change the name of the speed enumerate

# 4\. PWMOut

- [ ] Add in a function to disable the PWM output, instead of entering a 0 pulse value.
- [ ] The behavior of pulse > period is not defined. Suggestion: when the pulse is greater than period, make it a constant high voltage output
- [ ] a function for easy server control? e.g. fix period to 3ms and a flexible period from 900 us to 2100 us with a center point of 1500us

# 5\. Others

- [ ] add in mathematical functions?
