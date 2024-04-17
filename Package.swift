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
        .binaryTarget(name: "Identance", url: "https://download.identance.com/sdk/ios/2.13.0/Identance.xcframework.zip", checksum: "1d07db1c825e354dadb4b8d4d0aeb51b9af552597e5cb8664ca83112b83f3812")
    ]
)
