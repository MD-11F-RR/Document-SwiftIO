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

> Using digital pin D26 ~ D37 is **not recommended.** If possible, use D0 ~ D38 first.

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

Use a digital pin to switch on or off a LED.

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
          //toggle the LED when the switch is triggered
          RLED.toggle()

          //anti flickering in case the switch is being hold down.
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

If nothing is connected, by default, the pin will be pulled down and the return value will be `false`.

Input Voltage  | Returns
-------------- | -------
HIGH (> 2.8 V) | `true`
LOW (< 0.3 V)  | `false`

### Parameters

None

### Returns

`true` or `false` according to the voltage of the input pin.

--------------------------------------------------------------------------------

# ADVANCED USAGE

For starters, the Sample code and Basic usage above is enough for most of the applications. This class can be further configured.

The input mode including pull-up pull-down and hanging can be configured. Also, an input interruption is available for every digital pin.

## 1\. Advanced Initiation

### Syntax

`public init(_ id: Id, mode: Mode = .pullDown)`

### Description

Upon initiation, the input mode can also be configured.

### Parameters

`id` : **REQUIRED** The name of the digital input pin. Reference the Id enumerate for all the available input pins.

> Using digital pin D26 ~ D37 is **not recommended**, as they are required to be pulled down upon startup of the MCU. After startup they act as normal digital pins.<br>
> If possible, use D0 ~ D38 first.

`Mode` : **OPTIONAL** The input mode. It can be pullDown, pullUp and pullNone. By default it is pullDown.

## 2\. Set the Input Mode

### Syntax

`public func setMode(_ mode: Mode)`

### Description

Use this function to change the input mode after the initiation.

### Parameters

`Mode` : The input mode. It can be pullDown, pullUp and pullNone.

### Returns

Nothing

## 3\. Read the Input Mode

### Syntax

`public func getMode() -> Mode`

### Description

Use this function to read the current input mode.

### Parameters

None

### Returns

A member of `DigitalIn.Mode`

Can be `DigitalIn.Mode.pullDown`, `DigitalIn.Mode.pullUp` or `DigitalIn.Mode.pullNone` according to the current input mode of the specific pin.

## 4\. Set up an Interruption for the Input Pin

### Syntax

`public func setInterrupt(_ mode: InterruptMode, callback: @escaping ()->Void)`

### Description

This function is for advanced users.

Use this function to set up an interruption. Also, the trigger of the interruption can also be configured.

### Parameters

`mode: InterruptMode` : **REQUIRED** The trigger of the Interruption. Can be `disable`, `rising`, `falling` and `bothEdge`.

`callback: @escaping ()->Void` **REQUIRED** The interruption function. The return value of this function must be `void`

> It is not recommended to write an interruption that takes a long time to execute.

> Ideally this function should only do some basic logical calculations or modify some variables.

### Returns

Nothing
