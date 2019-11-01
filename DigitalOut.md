# **The DigitalOut class**

The DigitalOut class is used to set a High or Low voltage output on a digital output pin. An initiation is required before using the member functions of this class.

# INITIATION

`public init(_:Id)`

An initiation requires only one parameter. That is the pin to output. reference the Id enumerate for all the available digital output pin.

# BASIC USAGE

After the initiation, the member functions of this class can be used freely. Here's some basic usage of this class.

## 1\. Set a Value to the Output Pin

`public func write(_:bool)`

This member function requires one bool type parameter.

Parameter | Output value
--------- | --------------------------
True      | High voltage output (3.3V)
False     | Low voltage output (0V)

This function returns nothing.

## 2\. Toggle the Output Pin

`public func toggle()`

This member function requires no parameter. When being used, the output value of that specific pin will be reversed.

Original output value | Output value afterwards
--------------------- | -----------------------
High (3.3V)           | Low (0V)
Low (0V)              | High (3.3V)

## 3\. Get the Current Output Value

`public func getValue()`

This function requires no parameter and returns the current output value in bool format.

Current Output Value | Return Value
-------------------- | ------------
High (3.3V)          | True
Low (0V)             | False

Be aware that the result of this function **has nothing to do with the actual output of the pin.**<br>
For example, the pin is set to high but it is short to ground. The actual pin voltage would be low but since it is set to high, the function would return true.

## example code

```
import SwiftIO

func main() {
//Create a DigitalOut to .D0
let pin = DigitalOut(.D0)
//Reverse the output value every 1 second
while true {
pin.toggle()
sleep(ms:1000)
}
}
```

--------------------------------------------------------------------------------

# ADVANCED SETTINGS

The functions below allow further configuration of the output pin.

Upon initiation, the output Mode can be setup. The output mode can also be reconfigured later on with the functions listed below.

## 1\. Advanced Initiation

`public init(_ id: Id, mode: Mode = .pushPull, value: Bool = false)`

The initiation function requires only one parameter but it accepts up to three parameters.

Parameters | Required/Optional | Description
---------- | ----------------- | --------------------------------------------------------
id:Id      | Required          | The name of output pin.
mode:Mode  | Optional          | The output mode. pushPull or openDrain. Default:pushPull
value:Bool | Optional          | The output value after initiation. Default:False

### Sample Code

```
import SwiftIO


let outputPin0 = DigitalOut(.D0)
//The most simple way of initiating a pin D0, with all other parameters set to default.

let outputPin1 = DigitalOut(.D1, mode:.openDrain)
//Initiate the pin D1 with the output mode openDrain

let outputPin2 = DigitalOut(.D2, value:True)
//Initiate the pin D2 with a High voltage output after initiation

let outputPin3 = DigitalOut(.D3, mode:.openDrain, value:True)
//Initiate the pin D3 with the openDrain mode and a High voltage output after initiation.
```

## 2\. Change Output Mode

`public func setMode(_ mode: Mode)`
