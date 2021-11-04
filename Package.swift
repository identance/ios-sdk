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
        .binaryTarget(name: "Identance", url: "https://download.identance.com/sdk/ios/2.6.5/Identance.xcframework.zip", checksum: "140e80f73795c4dccb7c7700cec8c500f61bc19362a45257b71577ad965d6973")
    ]
)
