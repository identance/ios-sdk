// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Identance",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "Identance",
            targets: ["Identance"]),
    ],
    targets: [
        .binaryTarget(name: "Identance", url: "https://download.identance.com/sdk/ios/2.7.1/Identance.xcframework.zip", checksum: "f838cc91b0a90b00f921e312a10a29221577a513aabface078d361e702808225")
    ]
)
