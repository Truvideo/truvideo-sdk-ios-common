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
            url: "https://github.com/Truvideo/truvideo-sdk-ios-shared/releases/download/0.0.28/shared.xcframework.zip",
            checksum: "3cdaf362ee5c439188b28382a8ffe247894a18459dc6022d55f2fba0d78ef27e"
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
