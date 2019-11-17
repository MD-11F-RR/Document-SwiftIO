# **I2C**

I2C (I square C) is a two wire protocol to communicate between different devices.

Currently the I2C ports support only master mode. Slave mode is still under development.

--------------------------------------------------------------------------------

# INITIATION

## Syntax

`public init(_ id: Id,)`

## Description

An initiation of the class to a specific I2C interface as a master device.

> Currently the I2C ports support only master mode.

## Parameters

`Id` : **REQUIRED** The name of the I2C interface.

> Currently there are two I2C interfaces available. They are I2C0 and I2C1.

## Sample code

```swift
import SwiftIO

let commI2C = I2C(.I2C0)
```

--------------------------------------------------------------------------------

# BASIC USAGE

The I2C class allows some operations through I2C protocol, including reading messages from a device and writing messages to a device.

## Sample code

`sample code for the class`

## 1\. Write a Byte to a Device

### Syntax

`public func writeByte(_ value: UInt8, to address: UInt8)`

### Description

Use this function to write a Byte to a specific device

### Parameters

`_ value: UInt8` : **REQUIRED** The Byte to write to the device.

`to address: UInt8` : **REQUIRED** The address of the device.

### Sample Code

### Returns

Nothing

## 2\. Read a Byte from a Device

### Syntax

`public func readByte(from address: UInt8) -> UInt8`

### Description

Use this function to read a Byte from a certain device

### Parameters

`from address: UInt8` : **REQUIRED** The address of the device.

### Sample Code (If necessary)

### Returns

A Byte that the specific device sent to the I2C port.

## 3\. Write a Word to a Device

### Syntax

`public func writeWord(_ value: UInt16, to address: UInt8)`

### Description

Use this function to write a Word to a specific device

### Parameters

`_ value: UInt16` : **REQUIRED** The Word to write to the device.

`to address: UInt8` : **REQUIRED** The address of the device.

### Sample Code

### Returns

Nothing

## 4\. Read a Word to a Device

### Syntax

`public func readWord(from address: UInt8) -> UInt16`

### Description

Use this function to read a Word from a specific device

### Parameters

`from address: UInt8` : **REQUIRED** The address of the device.

### Sample Code

### Returns

A word that the specific device sent to the I2C port.

--------------------------------------------------------------------------------

# ADVANCED SETTINGS

This class can be further configured by using the functions below.

The speed of the I2C ports can be configured and changed. **_Other Funcs_**

## 1\. Advanced Initiation

### Syntax

`public init(_ id: Id, speed: Speed = .standard)`

### Description

The speed of the port can be configured upon initiation.

### Parameters

`Id` : **REQUIRED** The name of the interface.

`Speed` : **Optional** The speed of the I2C port. If not configured, it's set to be standard. Alternatively, `fast` and `fastPlus` is available.

> Reference the Speed enumerate below for more information.

### Sample Code

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
