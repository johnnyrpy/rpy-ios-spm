// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ReepayMirror",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "ReepayMirror",
            targets: ["ReepayMirror"]),
    ],
    dependencies: [
        .package(url: "https://github.com/reepay/reepay-ios.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "ReepayMirror",
            dependencies: [
                .product(name: "ReepayCheckoutSheet", package: "reepay-ios")
            ]),
        ]
    )
