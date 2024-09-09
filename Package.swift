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
            url: "https://github.com/Truvideo/truvideo-sdk-ios-common/releases/download/0.0.73/shared.xcframework.zip",
            checksum: "5adc0ce7e2307d461d5cbae1e0b7f4a69967dd5757a53f569708dc566c72e4d7"
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
