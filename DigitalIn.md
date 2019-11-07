# **The DigitalIn class**

The DigitalIn class is used to read the voltage input of a specific pin. An initiation is required before using the member functions of this class.

The main function of this class is to read the signal input of a specific pin, either HIGH input(> 2.8 V) or LOW input(< 0.3 V).

If the reading of an analog signal is required, please use the AnalogIn class.

**WARNING! A input voltage of greater than 3.8V will permanently damage the board.**

# INITIATION

## Syntax

`public init(_ : Id)`

## Description

An initiation of the class to a specific input pin.

## Parameters

`_ :Id` : The input pin. Reference the Id enumerate for all the available digital input pin.

Using digital pin D26 ~ D37 is **not recommended** If possible, use D0 ~ D38 first.

## Sample code

```swift
import SwiftIO
func main() {
  //initiate an input to the D0 pin on board.
  let readpin = DigitalIn(.D0)
}
```

--------------------------------------------------------------------------------

# BASIC USAGE

The DigitalIn class allows the reading of a specific digital pin. It can act as a source of signal.

## Sample code

Use a digital pin to control a LED.

```swift
import SwiftIO

//initiate the digital pin D0 to act as the switch
//the D0 pin should be connected to a normally open switch and then to the 3V3 pin.
let sw = DigitalIn(.D0)

//initiate the red LED.
let RLED = DigitalOut(.RED)

func main() {
  //set the default status of the LED to be off.
  RLED.write(true)

  while true {
      if sw.read() == true {
          RLED.toggle()
          while sw.read()==true{}
      }
  }
}
```

## 1\. Read the Value of the Input Pin

### Syntax

`public func read()`

### Description

Read the value of the specific input pin.

Input Voltage  | Returns
-------------- | -------
HIGH (> 2.8 V) | `true`
LOW (< 0.3 V)  | `false`

### Parameters

None

### Returns

`true` or `false` according to the voltage of the input pin.
