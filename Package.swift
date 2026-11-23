// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StorylyPlacement",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Main product that users will import (mandatory)
        .library(
            name: "StorylyPlacement",
            targets: ["StorylyPlacementWrapper"]
        ),
        // Optional products that users can choose to include
        .library(
            name: "StorylyStoryBar",
            targets: ["StorylyStoryBarWrapper"]
        ),
        .library(
            name: "StorylyBanner", 
            targets: ["StorylyBannerWrapper"]
        ),
        .library(
            name: "StorylyVideoFeed",
            targets: ["StorylyVideoFeedWrapper"]
        ),
        .library(
            name: "StorylySwipeCard",
            targets: ["StorylySwipeCardWrapper"]
        ),
        .library(
            name: "StorylyCanvas",
            targets: ["StorylyCanvasWrapper"]
        )
    ],
    dependencies: [
        // Add any external dependencies here if needed
    ],
    targets: [
        // Binary targets (the actual xcframeworks)
        .binaryTarget(
            name: "StorylyCore",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.19.1/StorylyCore.zip",
            checksum: "a9be33faa67f89817ae48ae1e46cdcef3fcb3d6fdd3e18a47e738fbe0ef2645b"
        ),
        .binaryTarget(
            name: "StorylyCoreInternal",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.19.1/StorylyCoreInternal.zip",
            checksum: "b571f506e8bd2c45920318f8038f1befb80096e6abf5413604d3913f5fc3c426"
        ),
        .binaryTarget(
            name: "StorylyRetailMedia",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.19.1/StorylyRetailMedia.zip",
            checksum: "893752beae053b0f8d202296bf15b288a9bda560fdb43166733813454037e04a"
        ),
        .binaryTarget(
            name: "StorylyAnalytics",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.19.1/StorylyAnalytics.zip",
            checksum: "3c5d949b37c1744b7372f1ee7257fd75514e7eb51feec63ad0646d18ea250903"
        ),
        .binaryTarget(
            name: "StorylyPlacement",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.19.1/StorylyPlacement.zip",
            checksum: "872eb44164ea91818d59836bafb26d6ef662fafc6e309dfd08c71e5d8be1d42c"
        ),
        .binaryTarget(
            name: "StorylyStoryBar",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.19.1/StorylyStoryBar.zip",
            checksum: "0d68fe18ed7082138a218862767fd355789ff05a8b40b879b1d60ebff89ac2e8"
        ),
        .binaryTarget(
            name: "StorylyBanner",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.19.1/StorylyBanner.zip",
            checksum: "a77b599d582a579fc5a3aa2d3ae5f6999ee8c24339e6c4a5780468be8aaa10e5"
        ),
        .binaryTarget(
            name: "StorylyVideoFeed",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.19.1/StorylyVideoFeed.zip",
            checksum: "7460199d7750d3d9192b0fd324e16f7f656d2038aaec232dd1499bd43e3e6b3a"
        ),
        .binaryTarget(
            name: "StorylySwipeCard",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.19.1/StorylySwipeCard.zip",
            checksum: "dc6af5caed04522ae47577ed482db5c337008de4125f3ac068712981e7eab0a3"
        ),
        .binaryTarget(
            name: "StorylyCanvas",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.19.1/StorylyCanvas.zip",
            checksum: "d41a8551db9c13a1db33edeb525fb19b612ea5887a5de3e011d9f103a8134389"
        ),
    
        .target(
            name: "StorylyCoreWrapper",
            dependencies: ["StorylyCore"],
            path: "Sources/StorylyCore"
        ),
        .target(
            name: "StorylyCoreInternalWrapper",
            dependencies: ["StorylyCoreInternal"],
            path: "Sources/StorylyCoreInternal"
        ),
        .target(
            name: "StorylyRetailMediaWrapper",
            dependencies: ["StorylyRetailMedia"],
            path: "Sources/StorylyRetailMedia"
        ),
        .target(
            name: "StorylyAnalyticsWrapper",
            dependencies: ["StorylyAnalytics"],
            path: "Sources/StorylyAnalytics"
        ),
        .target(
            name: "StorylyPlacementWrapper",
            dependencies: [
                "StorylyPlacement",
                "StorylyCore",
                "StorylyCoreInternal",
                "StorylyRetailMedia",
                "StorylyAnalytics"
            ],
            path: "Sources/StorylyPlacement"
        ),
        .target(
            name: "StorylyStoryBarWrapper",
            dependencies: ["StorylyStoryBar"],
            path: "Sources/StorylyStoryBar"
        ),
        .target(
            name: "StorylyBannerWrapper",
            dependencies: ["StorylyBanner"],
            path: "Sources/StorylyBanner"
        ),
        .target(
            name: "StorylyVideoFeedWrapper",
            dependencies: ["StorylyVideoFeed"],
            path: "Sources/StorylyVideoFeed"
        ),
        .target(
            name: "StorylySwipeCardWrapper",
            dependencies: ["StorylySwipeCard"],
            path: "Sources/StorylySwipeCard"
        ),
        .target(
            name: "StorylyCanvasWrapper",
            dependencies: ["StorylyCanvas"],
            path: "Sources/StorylyCanvas"
        )
    ],
    swiftLanguageVersions: [.v5]
)
