# **The DigitalIn class**

The DigitalIn class is used to read the voltage input of a specific pin. An initiation is required before using the member functions of this class.

**WARNING! A input voltage of greater than 3.8V will permanently damage the board.**

# INITIATION

## Syntax

`public init(_ : Id)`

## Description

An initiation of the class to a specific input pin.

## Parameters

`_ :Id` : The input pin. Reference the Id enumerate for all the available digital input pin.

## Sample code

```swift
import SwiftIO
func main() {
  let readpin = DigitalIn(.D0)
  //initiate an input to the D0 pin on board.
}
```

--------------------------------------------------------------------------------
