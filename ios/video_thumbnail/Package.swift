// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "video_thumbnail",
    platforms: [
        .iOS("12.0")
    ],
    products: [
        .library(name: "video-thumbnail", targets: ["video_thumbnail"])
    ],
    dependencies: [
        // Replaces the `libwebp` CocoaPods dependency from video_thumbnail.podspec.
        // 1.6.0 matches the libwebp version CocoaPods previously resolved.
        .package(url: "https://github.com/SDWebImage/libwebp-Xcode.git", from: "1.6.0")
    ],
    targets: [
        .target(
            name: "video_thumbnail",
            dependencies: [
                .product(name: "libwebp", package: "libwebp-Xcode")
            ],
            cSettings: [
                .headerSearchPath("include/video_thumbnail")
            ]
        )
    ]
)
