// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Common",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Common",
            targets: ["CommonTargets"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "Common",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-common/releases/download/0.0.77/shared.xcframework.zip",
            checksum: "4ee8b47d1fc8bc19b1a7581ef3e92b8cfefc1582955e1f4b318fb7d0e786cd30"
        ),
        .target(
            name: "CommonTargets",
            dependencies: [
                .target(name: "Common")
            ],
            path: "Sources"
        )
    ]
)
