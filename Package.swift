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
        .binaryTarget(name: "Identance", url: "https://download.identance.com/sdk/ios/2.20.0/Identance.xcframework.zip", checksum: "d48ed15163211785077ad0be69d648c9e9680de7b0b964c239b434c10fed7d90")
    ]
)
