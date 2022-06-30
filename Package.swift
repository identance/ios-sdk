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
        .binaryTarget(name: "Identance", url: "https://download.identance.com/sdk/ios/2.8.0/Identance.xcframework.zip", checksum: "9a6f830e80f8b4185f0bdfd8735fbeab0b1d2757eea6b347137b511746eac039")
    ]
)
