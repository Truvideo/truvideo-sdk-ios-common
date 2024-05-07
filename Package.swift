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
            url: "https://github.com/Truvideo/truvideo-sdk-ios-common/releases/download/0.0.68/shared.xcframework.zip",
            checksum: "563252e2b56a66dc0b5d9d313fa33a361a83a5b5db98ce740d47eeb0023ddc09"
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
