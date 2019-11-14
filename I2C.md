# **I2C**

I2C (I square C) is a two wire protocol to communicate between different devices.

Currently the I2C ports support only master mode. Slave mode is still under development.

--------------------------------------------------------------------------------

# INITIATION

## Syntax

`public init(_ id: Id,)`

## Description

An initiation of the class to a specific I2C interface as a master device.

## Parameters

`Id` : The name of the interface.

> Currently there are two I2C interfaces available. They are I2C0 and I2C1.

## Sample code

```swift
import SwiftIO

let commI2C = I2C(.I2C0)
```

--------------------------------------------------------------------------------

# BASIC USAGE

_Description_

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

A Byte that the specific address sent to the I2C port.

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

--------------------------------------------------------------------------------

# ADVANCED SETTINGS

`Description`

## 1\. Advanced Initiation

### Syntax

### Description

### Parameters

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
