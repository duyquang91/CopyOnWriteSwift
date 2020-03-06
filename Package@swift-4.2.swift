// swift-tools-version:4.2
//
//  CopyOnWriteSwift.swift
//  CopyOnWriteSwift
//
//  Created by Steve Dao on 01/04/19.
//  Copyright © 2019 duyquang91. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "CopyOnWriteSwift",
    products: [
        .library(
            name: "CopyOnWriteSwift",
            targets: ["CopyOnWriteSwift"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "CopyOnWriteSwift",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "CopyOnWriteSwiftTests",
            dependencies: ["CopyOnWriteSwift"],
            path: "Tests"
        ),
    ],
    swiftLanguageVersions: [.v4, .v4_2]
)
