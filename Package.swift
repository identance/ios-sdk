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
        .binaryTarget(name: "Identance", url: "https://download.identance.com/sdk/ios/2.18.0/Identance.xcframework.zip", checksum: "ebd087013fdbfabbc6ba085a4be5cd361a897779e5314f5aa27c831a4daf29c1")
    ]
)
