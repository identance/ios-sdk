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
        .binaryTarget(name: "Identance", url: "https://download.identance.com/sdk/ios/2.7.0/Identance.xcframework.zip", checksum: "729805bc27e037d260f400482bfbf248e07ab57945455dde970b5005409c45c6")
    ]
)
