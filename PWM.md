# **PWMOut**

PWM, also known as Pulse Width Modulation is a type of digital signal. It is commonly used in various applications. For example, the PWM signal can be used to configure a server, or to control the dimming of a LED light.

This board currently support 14 PWM outputs. Please reference the board schematic for all the available output pins.

--------------------------------------------------------------------------------

# INITIATION

## Syntax

`public init(_ id: Id)`

## Description

An initiation of the class to a specific PWM output pin. Right after the initiation, the pin will output a constant low voltage until being further configured.

## Parameters

`_ id: Id` : **REQUIRED** The name of the PWM ports. They are PWM0 ~ PWM13\. Reference the board schematic for the corresponding pin.

## Sample code

```swift
import SwiftIO

let PWMout0 = PWMOut(.PWM0)
```

--------------------------------------------------------------------------------

# BASIC USAGE

_Description_

## Sample code

`sample code for the class`

## 1\. Functions of the member function

### Syntax

`code`

### Description

### Parameters

### Sample Code (If necessary)

### Returns

## 2\. Repeat above

--------------------------------------------------------------------------------

# ADVANCED SETTINGS

`Description`

## 1\. Advanced Initiation

### Syntax

`public init(_ id: Id, period: UInt = 1000, pulse: UInt = 0)`

### Description

An initiation of the class to a specific PWM output pin.

Upon initiation, the PWM output right after the initiation can be configured by the parameters `period` and `pulse`

### Parameters

`_ id: Id` : **REQUIRED** The name of the PWM ports. They are PWM0 ~ PWM13\. Reference the board schematic for the corresponding pin.

`period: UInt = 1000` : **OPTIONAL** The period of the PWM signal in meter of microsecond(us). Default: 1000 us.

`pulse: UInt = 0` : **OPTIONAL** The pulse of the PWM signal in meter of microsecond(us). Default: 0 us, meaning the output will always be a low voltage.

> If the `pulse` value is greater than the `period`, it would

- [ ] **UNCLEAR BEHAVIOR HERE**

### Sample Code (If necessary)

## 2\. Advanced Function

### Syntax

### Description

### Parameters

### Sample Code (If necessary)

### Returns

## 3\. Repeat above

--------------------------------------------------------------------------------

# ENUMERATES USED IN THIS CLASS

## 1\. Enumerate1

Member in enumerate1 | Description
-------------------- | ------------
Member1              | Description1
...                  | ...

## 2\. Mode
