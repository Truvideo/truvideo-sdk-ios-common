// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Shared",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Shared",
            targets: ["SharedTargets"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "Shared",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-shared/releases/download/0.0.32/shared.xcframework.zip",
            checksum: "00d34a4f0cd0c1a2ebbd4ef465beb983331660e6e4d03b43ae1a843e8cce37d7"
        ),
        .target(
            name: "SharedTargets",
            dependencies: [
                .target(name: "Shared")
            ],
            path: "Sources"
        )
    ]
)
