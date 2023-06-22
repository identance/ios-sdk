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
        .binaryTarget(name: "Identance", url: "https://download.identance.com/sdk/ios/2.11.0/Identance.xcframework.zip", checksum: "9a9d86bc364112e3eba5019960f47065d212ece15b8fcaa9f810376897f56200")
    ]
)
