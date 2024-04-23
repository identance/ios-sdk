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
        .binaryTarget(name: "Identance", url: "https://download.identance.com/sdk/ios/2.14.0/Identance.xcframework.zip", checksum: "09579494bb0a79955382f5913b54213291d790a6a238fe6123a6440df8e8cde9")
    ]
)
