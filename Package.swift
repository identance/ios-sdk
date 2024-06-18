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
        .binaryTarget(name: "Identance", url: "https://download.identance.com/sdk/ios/2.17.0/Identance.xcframework.zip", checksum: "46427282d363a205739e9680e01ff1b5ef808431b226ce0b8d9702f7ab9e7b9b")
    ]
)
