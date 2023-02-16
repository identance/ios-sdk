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
        .binaryTarget(name: "Identance", url: "https://download.identance.com/sdk/ios/2.10.0/Identance.xcframework.zip", checksum: "7986b1b579be175e62612bfff4054348ecff0e1f4a77349590503e65dce9c3c2")
    ]
)
