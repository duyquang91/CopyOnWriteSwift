# CopyOnWriteSwift

[![Version](https://img.shields.io/cocoapods/v/CopyOnWriteSwift.svg?style=flat)](https://cocoapods.org/pods/CopyOnWriteSwift)
[![License](https://img.shields.io/cocoapods/l/CopyOnWriteSwift.svg?style=flat)](https://cocoapods.org/pods/CopyOnWriteSwift)
[![Platform](https://img.shields.io/cocoapods/p/CopyOnWriteSwift.svg?style=flat)](https://cocoapods.org/pods/CopyOnWriteSwift)

![](header.png)

## About

Copy-on-write is a common computing technique that helps boost performance when copying structures. To give you an example, imagine an array with 1000 elements inside it: if you copied that array into another variable, Swift would have to copy all 1000 elements even if the two arrays ended up being the same.  

This problem is solved by using copy-on-write: when you point two variables at the instance, they both point to the same underlying data, if you modify the second variable, compiler takes a full copy at that point so that only the second variable is modified - the first isn't changed.

In Swift, only some kinds of value type are implemented under copy-on-write such as **Array**. We're here to bring copy-on-write to support all value types in Swift by using a simple annotation: `@CopyOnWrite`

```swift
struct Foo {...}

@CopyOnWrite
var foo1 = Foo()        // memory_address: 0x60000006e420

var foo2 = foo1         // memory_address: 0x60000006e420

foo2.mutatingMethod()   // memory_address: 0x6080000a88a0

```

without `@CopyOnWrite`
```swift
struct Foo {...}

var foo1 = Foo()        // memory_address: 0x60000006e420

var foo2 = foo1         // memory_address: 0x6080000a88a0

```

This library was inspired from [Writing High-Performance Swift Code](https://github.com/apple/swift/blob/master/docs/OptimizationTips.rst#advice-use-copy-on-write-semantics-for-large-values) from [Apple/swift](https://github.com/apple/swift).

## Installation

### CocoaPods

CopyOnWriteSwift is available through [*CocoaPods*](https://cocoapods.org). To install
it, simply add the following line to your ***Podfile***:

```ruby
pod 'CopyOnWriteSwift'
```

### Carthage

CopyOnWriteSwift is also available through [Carthage](https://github.com/Carthage/Carthage). To install
it, simply add the following line to your ***Cartfile***:

```ruby
github 'Duyquang91/CopyOnWriteSwift'
```

## License

CopyOnWriteSwift is available under the MIT license. See the LICENSE file for more info.

---

## About header photo

The header photo is a famous place named [Cầu Vàng (Golden Bridge)](https://en.wikipedia.org/wiki/Golden_Bridge_(Vietnam))
 in Da Nang, VietNam. If you are going to visit VietName, don't forget to take a photo there!
