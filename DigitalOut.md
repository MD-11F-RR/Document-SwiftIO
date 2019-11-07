# **The DigitalOut class**

The DigitalOut class is used to set a High or Low voltage output to a digital output pin. An initiation is required before using the member functions of this class.

The driving capability of the digital output pins is not very strong. It is meant to be a **SIGNAL** output. It is not capable of driving a device requires a large current.

--------------------------------------------------------------------------------

# INITIATION

## Syntax

`public init(_ id:Id)`

## Description

An initiation of the class to a specific output pin.

## Parameters

`_ id:Id`: The output pin. Reference the Id enumerate for all the available digital output pin.

## Sample code

```swift
import SwiftIO
func main() {
  //initiate an output to the RED led on board.
  let redLED = DigitalOut(.RED)
}
```

--------------------------------------------------------------------------------

# BASIC USAGE

After the initiation, the member functions of this class can be used freely. Here's some basic usage of this class.

## Sample code

```swift
import SwiftIO

func main() {
    //initiate a DigitalOut to the Red LED
    let redLED = DigitalOut(.RED)

    while true {
      //Toggle the output of the pin every 1000 ms.
      redLED.toggle()
      sleep(ms:1000)
      }
}
```

Alternatively,

```swift
func main() {
    //initiate a DigitalOut to the Green LED
    let greenLED = DigitalOut(.GREEN)


    while true {
      //Toggle the output of the pin every 1000 ms using another member function.
      greenLED.write(true)
      sleep(ms:1000)
      greenLED.write(false)
      sleep(ms:1000)
      }
}
```

## 1\. Set a Value to the Output Pin

### Syntax

`public func write(_ :bool)`

### Description

Use this function to set the output value of the specific pin.

### Parameters

`_ :bool`: The output value. Reference the table below

`_ :bool` | Output value
--------- | --------------------------
`true`    | High voltage output (3.3V)
`false`   | Low voltage output (0V)

### Returns

Nothing

## 2\. Toggle the Output Pin

### Syntax

`public func toggle()`

### Description

This function will reverse the current output value of the specific pin.

Original output value | Output value after using the function
--------------------- | -------------------------------------
High (3.3V)           | Low (0V)
Low (0V)              | High (3.3V)

### Parameters

None

### Returns

Nothing

## 3\. Get the Current Output Value

### Syntax

`public func getValue()`

### Description

This function returns the current output value in Boolean format.

Current Output Value | Return Value
-------------------- | ------------
High (3.3V)          | `true`
Low (0V)             | `false`

### Parameters

None

### Returns

Boolean : `true` or `false`

### Caution

The result of this function **has nothing to do with the actual output of the pin.**<br>
For example, the pin is set to high but it is short to ground. The actual pin voltage would be low. This function will still return `true` despite the actual low output, since this pin is set to HIGH.

--------------------------------------------------------------------------------

# ADVANCED SETTINGS

The functions below allow further configuration of the output pin.

Upon initiation, the output Mode can be setup. The output mode can also be reconfigured later on with the functions listed below.

## 1\. Advanced Initiation

### Syntax

`public init(_ id: Id, mode: Mode = .pushPull, value: Bool = false)`

### Description

Upon initiation, more parameters can be accepted to further configure the output pin.

### Parameters

`id:Id` : **REQUIRED.** The name of output pin. Reference the Id enumerate.<br>
`mode:Mode` : **OPTIONAL.** The output mode of the pin. Default: push-pull. Can be open drain as well. See sample code below.<br>
`value:Bool` : **OPTIONAL.** The output value after initiation. Default:false The initiation function requires only one parameter but it accepts up to three parameters.

### Sample Code

```swift
import SwiftIO

func main(){
    //here's four way of initiating a DigitalOut class

    //1\. The most simple way of initiating a pin D0, with all other parameters set to default.
    let outputPin0 = DigitalOut(.D0)


    //2\. Initiate the pin D1 with the output mode openDrain
    let outputPin1 = DigitalOut(.D1, mode:.openDrain)


    //3\. Initiate the pin D2 with a High voltage output after initiation
    let outputPin2 = DigitalOut(.D2, value:true)


    //4\. Initiate the pin D3 with the openDrain mode and a High voltage output after initiation.
    let outputPin3 = DigitalOut(.D3, mode:.openDrain, value:true)

}
```

## 2\. Change Output Mode

### Syntax

`public func setMode(_ mode: Mode)`

### Description

This function changes the output mode after initiation. It accepts one parameter and returns nothing.

### Parameters

`mode:Mode` : The output mode of this output pin. Can be pushPull or openDrain

### Returns

Nothing

## 3\. Get the Current Output mode

### Syntax

`public func getMode()`

### Description

This function returns the current output mode in a format of DigitalOut.Mode enumerate.

### Parameters

None

### Returns

`DigitalOut.Mode`

### Sample code

```swift
import SwiftIO
func main() {
  let pin = DigitalOut(.D0)
  while true {
      if pin.getMode() == DigitalOut.Mode.pushPull{
          //do something
      }
  }

}
```

--------------------------------------------------------------------------------

# ENUMERATES USED IN THIS CLASS

## 1\. Id

The Id enumerate includes available digital pin. They are D0 ~ D45, RED, GREEN, BLUE.

Reference the pin map for the location on board.

Members in Id        | Description
-------------------- | ------------------------------------------------------------------------------
D0 ~ D25 & D38 ~ D45 | Normal digital pins available for DigitalOut class
D26 ~ D37            | Digital pins that is not recommended to use unless necessary. Reference below.
RED                  | Red LED on board. Low output to emit it
GREEN                | Green LED on board. Low output to emit it
BLUE                 | Blue LED on board. Low output to emit it

**Attention!**<br>
Using digital pin D26 ~ D37 is not recommended, as they are required to be pulled down upon startup of the MCU. After startup they act as normal digital pins.<br>
If possible, use D0 ~ D38 first.

## 2\. Mode

The Mode enumerate includes the available output modes.

Members in Mode | Description
--------------- | ---------------------------------
pushPull        | The default output mode, pushPull
openDrain       | the openDrain output mode
