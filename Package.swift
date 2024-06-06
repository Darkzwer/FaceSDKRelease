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
        .package(url: "https://github.com/Darkzwer/CommonDepSwift.git", .exactItem("7.1.379")),
    ],
    targets: [
        .target(
            name: "FaceSDKRelease", dependencies: [
                .product(name: "RegulaCommonSwift", package: "CommonDepSwift")
            ]),
        .binaryTarget(
            name: "FaceSDKBinaryTarget",
            url: "https://pods.regulaforensics.com/FaceSDK/6.1.1746/FaceSDK-6.1.1746.zip",
            checksum: "837035c93f8405be0ee65e9da720a73c76757a6fa79533958bd5c2318e3d9eee"),
    ]
)
