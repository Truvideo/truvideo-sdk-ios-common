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
            url: "https://github.com/Truvideo/truvideo-sdk-ios-shared/releases/download/0.0.66/shared.xcframework.zip",
            checksum: "9678278b4823452dc819d2e904dc4accebf2606140336c795c3d3c7a3bcedd2c"
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
