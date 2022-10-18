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
        .binaryTarget(name: "Identance", url: "https://download.identance.com/sdk/ios/2.9.0/Identance.xcframework.zip", checksum: "407165ef635f2cb345104c79adcecad3028355922dce83f8e12d16a79368c4e5")
    ]
)
