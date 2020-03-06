# CopyOnWriteSwift

![](https://img.shields.io/badge/iOS-11.0%2B-lightgrey) ![](https://img.shields.io/badge/macOS-10.13%2B-lightgrey)
![](https://img.shields.io/badge/watchOS-5.0%2B-lightgrey)
![](https://img.shields.io/badge/tvOS-11.0%2B-lightgrey)

[![CocoaPods compatible](https://img.shields.io/cocoapods/v/CopyOnWriteSwift.svg)](https://cocoapods.org/pods/CopyOnWriteSwift)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Swift Package Manager](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg)](https://github.com/apple/swift-package-manager)


![](header.png)

## Overview

Copy-on-write is a common computing technique that helps boost performance when copying structures. To give you an example, imagine an array with 1000 elements inside it: if you copied that array into another variable, Swift would have to copy all 1000 elements even if the two arrays ended up being the same.  

This problem is solved by using copy-on-write: when you point two variables at the instance, they both point to the same underlying data, if you modify the second variable, compiler takes a full copy at that point so that only the second variable is modified - the first isn't changed.

In Swift, only some kinds of value type are implemented under copy-on-write such as **Array**. We're here to bring copy-on-write to support all value types in Swift by using a simple annotation: `@CopyOnWrite`

```swift
import CopyOnWriteSwift

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

This library was inspired by [Writing High-Performance Swift Code](https://github.com/apple/swift/blob/master/docs/OptimizationTips.rst#advice-use-copy-on-write-semantics-for-large-values) from [Apple/swift](https://github.com/apple/swift)

## Installation

<details>
  <summary><strong>CocoaPods</strong></summary>

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate CopyOnWriteSwift into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '11.0'
use_frameworks!

pod 'CopyOnWriteSwift', '~> 1.0.0'
```

Then, run the following command:

```bash
$ pod install
```

</details>

<details>
  <summary><strong>Carthage</strong></summary>

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that automates the process of adding frameworks to your Cocoa application.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate CopyOnWriteSwift into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "Duyquang91/CopyOnWriteSwift" ~> 1.0.0
```

</details>

<details>
  <summary><strong>Swift Package Manager</strong></summary>

To use CopyOnWriteSwift as a [Swift Package Manager](https://swift.org/package-manager/) package just add the following in your Package.swift file.

``` swift
// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "HelloCopyOnWriteSwift",
    dependencies: [
        .package(url: "https://github.com/duyquang91/CopyOnWriteSwift.git", .upToNextMajor(from: "1.0.0"))
    ],
    targets: [
        .target(name: "HelloCopyOnWriteSwift", dependencies: ["CopyOnWriteSwift"])
    ]
)
```
</details>

## Author
[Steve Dao](https://www.linkedin.com/in/steve-dao-259563147/)  
Senior Software Engineer at [NTUC Enterprise Co-operative Limited](https://www.linkedin.com/company/ntuc-enterprise/), Singapore.

## License

CopyOnWriteSwift is released under the MIT license. See [LICENSE](https://github.com/duyquang91/CopyOnWriteSwift/blob/master/LICENSE) for details.

## About header photo

The header photo is a famous place named [Cầu Vàng (Golden Bridge)](https://en.wikipedia.org/wiki/Golden_Bridge_(Vietnam))
 in Da Nang, Vietnam. If you are going to visit Vietnam, don't forget to take a photo there!
