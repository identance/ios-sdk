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
        .binaryTarget(name: "Identance", url: "https://download.identance.com/sdk/ios/2.13.0/Identance.xcframework.zip", checksum: "a83670165c3b0a4d42e1bf395067b6bf32811d2114974afe6a812baaa688cdce")
    ]
)
