// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let packageVersion = "0.0.6"
let sharedPackageVersion = "0.0.2"

let package = Package(
    name: "Common",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Common",
            targets: ["Common"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "Common",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-common/releases/download/\(packageVersion)/Common.xcframework.zip",
            checksum: "b5edba638c86740e9d0acbacca5784a79245d14680621f79b67ea0a29a5601d8"
        ),
        .binaryTarget(
            name: "Shared",
            url: "https://github.com/jorge-orjuela-kenility/Shared-Package/releases/download/\(sharedPackageVersion)/shared.xcframework.zip",
            checksum: "5028e25b25b24e6f35fbe4484dfc438a31345a9d5bf5666640e99849cfb497cb"
        ),
        .target(
            name: "TruvideoSdkTargets",
            dependencies: [
                .target(name: "Common"),
                .target(name: "Shared")
            ],
            path: "Sources"
        )
    ]
)
