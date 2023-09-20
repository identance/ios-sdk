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
        .binaryTarget(name: "Identance", url: "https://download.identance.com/sdk/ios/2.12.0/Identance.xcframework.zip", checksum: "fc12a6b5688b659a3dc73bdb69f3fdbe4757a47f08fc5cae7c6543324f8c9a21")
    ]
)
