// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Identance",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "Identance",
            targets: ["Identance"]),
    ],
    targets: [
        .binaryTarget(name: "Identance", url: "https://download.identance.com/sdk/ios/2.16.0/Identance.xcframework.zip", checksum: "ca0e5e4daad5a2926a02c0ef16f25e6bdc5e6f94316a74f29d592360f46755ac")
    ]
)
