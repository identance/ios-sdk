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
        .binaryTarget(name: "Identance", url: "https://download.identance.com/sdk/ios/2.20.0/Identance.xcframework.zip", checksum: "d06a32864f3c1870f6d8fe48a4bc98e576499a58cc5d05675ca28a67895d6cdd")
    ]
)
