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

> Different I2C devices have different attributes to it. Please reference the device manual to use the functions below.

> This class allows the reading and writing of a **Byte (Uint8)** or a **Word (Uint16)**.

## Sample code

`sample code for the class`

## 1\. Write a Byte to a certain Device

### Syntax

`public func writeByte(_ value: UInt8, to address: UInt8)`

### Description

Use this function to write a Byte (Uint8) to a specific device

### Parameters

`_ value: UInt8` : **REQUIRED** The Byte (Uint8) to write to the device.

`to address: UInt8` : **REQUIRED** The address of the device.

### Sample Code

- [ ] Sample code

### Returns

Nothing

## 2\. Read a Byte from a certain Device

### Syntax

`public func readByte(from address: UInt8) -> UInt8`

### Description

Use this function to read a Byte (Uint8) from a certain device

### Parameters

`from address: UInt8` : **REQUIRED** The address of the device.

### Sample Code

- [ ] Sample Code

### Returns

A Byte (Uint8) that the specific device sent to the I2C port.

## 3\. Write a Word to a certain Device

### Syntax

`public func writeWord(_ value: UInt16, to address: UInt8)`

### Description

Use this function to write a Word (Uint16) to a specific device

### Parameters

`_ value: UInt16` : **REQUIRED** The Word to write to the device.

`to address: UInt8` : **REQUIRED** The address of the device.

### Returns

Nothing

## 4\. Read a Word to a certain Device

### Syntax

`public func readWord(from address: UInt8) -> UInt16`

### Description

Use this function to read a Word (Uint16) from a specific device

### Parameters

`from address: UInt8` : **REQUIRED** The address of the device.

### Returns

A word (Uint16) that the specific device sent to the I2C port.

--------------------------------------------------------------------------------

# ADVANCED SETTINGS

This class can be further configured by using the functions below.

The speed of the I2C ports can be configured and changed.

Also, there're some advanced functions listed below.

## 1\. Advanced Initiation

### Syntax

`public init(_ id: Id, speed: Speed = .standard)`

### Description

The speed of the port can be configured upon initiation.

### Parameters

`Id` : **REQUIRED** The name of the interface.

`Speed` : **Optional** The speed of the I2C port. If not configured, it's set to be standard. Alternatively, `fast` and `fastPlus` is available.

> Reference the Speed enumerate below for more information.

## 2\. Change the Speed of the I2C port

### Syntax

`public func setSpeed(_ speed: Speed)`

### Description

The connection speed can be configured by using this function.

> Currently, three connection speed is allowed. Reference the speed enumerate for more information.

### Parameters

`_ speed: Speed` : **REQUIRED** The connection speed of the I2C port.

### Returns

Nothing

## 2\. Read the Speed of the I2C port

### Syntax

`public func getSpeed() -> Speed`

### Description

The connection speed can be read by using this function.

> Currently, three connection speed is allowed. Reference the speed enumerate for more information.

### Parameters

None

### Returns

A member of the speed enumerate listed in the speed enumerate.

## 3\. Write an array to a certain device

### Syntax

`public func write(_ value: [UInt8], to address: UInt8)`

### Description

Instead of using the `writeByte` function repeatedly, use this function to write an array to a certain device.

The members of the array must be in format of Uint8

### Parameters

`_ value: [UInt8]` : **REQUIRED** The array to write to the device. The member of the array must be Uint8

`to address: UInt8` : **REQUIRED** The address of the target device.

### Sample Code (If necessary)

### Returns

Nothing

## 4\. Write an Array to a Certain Device First and then Read a Certain amount of times from the Device

### Syntax

`public func writeRead(_ value: [UInt8], readCount: Int, address: UInt8) -> [UInt8]`

### Description

Sometimes it's required to send something to a slave device first and then read values from it. This function allows the sending of an array to a slave device first and then the reading from the slave device.

For example, to read a register of a slave device, the address of the register must be sent first. This function is fully intended for this types of usage.

### Parameters

`_ value: [UInt8]` : **REQUIRED** The array to sent to the slave device.

`readCount: Int` : **REQUIRED** The length of the array that the slave device responds.

`address: UInt8` : **REQUIRED** The address of the slave device.

### Sample Code (If necessary)

### Returns

`[Uint16]` : An array that the slave device sent. The length of the array is determined by the parameter `readCount:Int`.

--------------------------------------------------------------------------------

# ENUMERATES USED IN THIS CLASS

## 1\. Enumerate1

Member in enumerate1 | Description
-------------------- | ------------
Member1              | Description1
...                  | ...

## 2\. Speed

Member in enumerate1 | Description
-------------------- | -----------
standard             | 100 kbit/s
fast                 | 400 kbit/s
fastPlus             | 1 Mbit/s
