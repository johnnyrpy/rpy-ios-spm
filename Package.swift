// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "rpy-ios-spm",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "Test",
            targets: ["Test"]),
    ],
    dependencies: [
        .package(url: "https://github.com/reepay/reepay-ios.git", from: "1.0.0"),
    ],
    targets: [
        // .target(
        //     name: "Test",
        //     path: "Sources/Test",
        //     sources: ["Dummy.swift"]
        // ),
        // .binaryTarget(
        //     name: "ReepayCheckoutSheet",
        //     url: "https://github.com/reepay/reepay-ios/releases/download/1.0.0/Reepay.xcframework.zip",
        //     checksum: "109e9661c16691649c005ed1190f54a19c230f93beeff5c0c5569e332356dce1"
        // ),
        .target(
            name: "No",
            dependencies: [
                "Test",
                .product(name: "ReepayCheckoutSheet", package: "reepay-ios")
            ],
            path: "Sources/Test",
            sources: ["Dummy.swift"]
        ),
    ]
)
