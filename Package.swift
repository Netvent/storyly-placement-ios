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
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.19.0/StorylyCore.zip",
            checksum: "f90a79e6507d95de821de0317c3c126a231d1b5457f949ce0b7a33f79578d734"
        ),
        .binaryTarget(
            name: "StorylyCoreInternal",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.19.0/StorylyCoreInternal.zip",
            checksum: "d1441e95279108a15b9cbac6b3faa6ab91ad0178ac53f5474c85d9b51dcb37a6"
        ),
        .binaryTarget(
            name: "StorylyRetailMedia",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.19.0/StorylyRetailMedia.zip",
            checksum: "d466ded72853b2fc65ddc2a4e1dffe2a7808c04100c7591389c620f624f83c7c"
        ),
        .binaryTarget(
            name: "StorylyAnalytics",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.19.0/StorylyAnalytics.zip",
            checksum: "351c101136a0c52396bf45e4c085c97a1effff34b1803e91f3becb26bcfa9821"
        ),
        .binaryTarget(
            name: "StorylyPlacement",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.19.0/StorylyPlacement.zip",
            checksum: "a729d1ea86519f5e63286d2980738cd9ab1d3bd289b4947c40c471b650f8a315"
        ),
        .binaryTarget(
            name: "StorylyStoryBar",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.19.0/StorylyStoryBar.zip",
            checksum: "49c53f1cafcb50f60bd3a0c62223e92fd5a13c5524cd716bf2aad2431e254e3e"
        ),
        .binaryTarget(
            name: "StorylyBanner",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.19.0/StorylyBanner.zip",
            checksum: "a16852f981a711972208159977d7c94f99c78ff214c001428e7c645d584bad75"
        ),
        .binaryTarget(
            name: "StorylyVideoFeed",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.19.0/StorylyVideoFeed.zip",
            checksum: "eecb2dff64e27ed6ab74aae3b161421c55c9c6751a60539be3aad0d78a3ffab8"
        ),
        .binaryTarget(
            name: "StorylySwipeCard",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.19.0/StorylySwipeCard.zip",
            checksum: "2c87c95b505b0ab68f961e04e09ae12f2e6cca3d883609babcd69f18f1511287"
        ),
        .binaryTarget(
            name: "StorylyCanvas",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.19.0/StorylyCanvas.zip",
            checksum: "38f37375f44e4e69d81ab7d01175e06de8ba8c2961f4467446fed5f8b13fe0ae"
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
