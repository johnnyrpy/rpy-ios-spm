// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Reepay SPM",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v15),
    ],
    dependencies: [
        .package(url: "https://github.com/reepay/reepay-ios.git", from: "1.0.0"),
    ],
    products: [
        .library(
            name: "ReepayCheckoutSheet",
            targets: ["ReepayCheckoutSheet"]),
    ],
    targets: [
        .binaryTarget(
            name: "ReepayCheckoutSheet",
            path: "ReepayCheckoutSheet/ReepayCheckoutSheet.xcframework"),
    ])
