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
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.2.1/StorylyCore.zip",
            checksum: "906b0f0d7911de0c43d2a577ebc2f20c220097a2997c503bdd3e69d6b6f58733"
        ),
        .binaryTarget(
            name: "StorylyCoreInternal", 
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.2.1/StorylyCoreInternal.zip",
            checksum: "0792f7c9dcb0c8ea012343adb04fb0184983cf154e8d5ba6083d804e9d19d0b2"
        ),
        .binaryTarget(
            name: "StorylyAnalytics", 
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.2.1/StorylyAnalytics.zip",
            checksum: "8e3cc21372faef6bf098743f75b183c7d58061213dc255ce7a5c38a715804526"
        ),
        .binaryTarget(
            name: "StorylyPlacement",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.2.1/StorylyPlacement.zip",
            checksum: "5241f4e650895621b591b6a45926f2a1cad5e57912d6036fbef378cf24c823f6"
        ),
        .binaryTarget(
            name: "StorylyStoryBar",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.2.1/StorylyStoryBar.zip",
            checksum: "e8551faad4dc2ae3cc5c32f6325e812c9834fcba64ff3a76ea8e08fc53396a97"
        ),
        .binaryTarget(
            name: "StorylyBanner",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.2.1/StorylyBanner.zip",
            checksum: "c3aedb4f13f52c4f72cb74fa7ce51e21aac999136173f131b4068ce7b44f02bf"
        ),
        .binaryTarget(
            name: "StorylyVideoFeed",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.2.1/StorylyVideoFeed.zip",
            checksum: "fce2f0662eecd7a2ec7623aeb0943f97fd515a748e2e7bee4b4ef574c4daab0b"
        ),
        .binaryTarget(
            name: "StorylySwipeCard",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.2.1/StorylySwipeCard.zip",
            checksum: "121060a7c5fe98a998452e128eeaa1591fc13b0c51ee6a811a463dab806278ad"
        ),
        .binaryTarget(
            name: "StorylyCanvas",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.2.1/StorylyCanvas.zip",
            checksum: "c73b97a2cce8e050699d871ac980dad8ab31efd5f554ecabc3bf80c09942f2ec"
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