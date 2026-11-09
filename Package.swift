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
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.18.1/StorylyCore.zip",
            checksum: "290fa28ea13ebbde334308e54b1613156dc0d1eb6cc3868e2985423b9ad77e69"
        ),
        .binaryTarget(
            name: "StorylyCoreInternal",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.18.1/StorylyCoreInternal.zip",
            checksum: "38cd09d6c33bf1ca89bf694f884ffb4ae87414364b807a0722cc5352d7300a9d"
        ),
        .binaryTarget(
            name: "StorylyRetailMedia",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.18.1/StorylyRetailMedia.zip",
            checksum: "775affcf0d8e5b0cf7250558a7b66710a17251eb9bc33630169e8f00f9f364ed"
        ),
        .binaryTarget(
            name: "StorylyAnalytics",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.18.1/StorylyAnalytics.zip",
            checksum: "0d6f43b5fda1499f8905fff9b43e3f1f50c73e9626b2ac408af549d1f24d6ce0"
        ),
        .binaryTarget(
            name: "StorylyPlacement",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.18.1/StorylyPlacement.zip",
            checksum: "fb20fe3882219e1b6a0bfd3d550771af9a3a4bbdb15476f8bd31ec5bc4a3ef65"
        ),
        .binaryTarget(
            name: "StorylyStoryBar",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.18.1/StorylyStoryBar.zip",
            checksum: "768ccf526f5a2da23c99966caa5c7982a01a3d26f282e3bba694bb241cde7d2f"
        ),
        .binaryTarget(
            name: "StorylyBanner",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.18.1/StorylyBanner.zip",
            checksum: "03edfcf6a1a6cb6fde9533763b3d3a0bfa9ddd86ababf5eec00e328a1395fc31"
        ),
        .binaryTarget(
            name: "StorylyVideoFeed",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.18.1/StorylyVideoFeed.zip",
            checksum: "ca0d15e56ea1b254116c3b3f1e8734808a5dc28256620444ccbc861437a219b6"
        ),
        .binaryTarget(
            name: "StorylySwipeCard",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.18.1/StorylySwipeCard.zip",
            checksum: "d76e78eb6bcc7ada84b2e597a007b0b489e237e5cce59bcdaf0d9af035cbbb27"
        ),
        .binaryTarget(
            name: "StorylyCanvas",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/ios/placement/1.18.1/StorylyCanvas.zip",
            checksum: "d1353b255c5b712a9c474b267e3bd5794c6f1e2f2e602b8ec51d77f5a9aacdff"
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
