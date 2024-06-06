// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FaceSDK",
    products: [
        .library(
            name: "FaceSDK",
            targets: ["FaceSDKBinaryTarget", "FaceSDKRelease",]),
    ],
    dependencies: [
        .package(url: "https://github.com/Darkzwer/CommonDepSwift.git", .exactItem("7.2.487")),
    ],
    targets: [
        .target(
            name: "FaceSDKRelease", dependencies: [
                .product(name: "RegulaCommonSwift", package: "CommonDepSwift")
            ]),
        .binaryTarget(
            name: "FaceSDKBinaryTarget",
            url: "https://pods.regulaforensics.com/FaceSDK/6.1.1825/FaceSDK-6.1.1825.zip",
            checksum: "9b313d81bf540035f0bcd059ec5612fe517fd841746225486f397c6c65a88719"),
    ]
)
