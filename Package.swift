// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let packageVersion = "0.0.4"

let package = Package(
    name: "Shared",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Shared",
            targets: ["SharedTargets"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "Shared",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-common/releases/download/\(packageVersion)/shared.xcframework.zip",
            checksum: "30cc3a6dd6d5819f235eb27c18b1cc4002f1b67d5cba33a789a6a46f1e06050d"
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
