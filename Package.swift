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
        .binaryTarget(name: "Identance", url: "https://download.identance.com/sdk/ios/2.19.0/Identance.xcframework.zip", checksum: "34221ca25942df2e8e5088b21404fdbcd101b93ebdc3fc493b5985a47a7b8b34")
    ]
)
