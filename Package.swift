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
        .binaryTarget(name: "Identance", url: "https://download.identance.com/sdk/ios/2.15.0/Identance.xcframework.zip", checksum: "86e125bf76c116e29f98a48642dbea2cf64e5a0d448ad7e3a10690ca902991fe")
    ]
)
