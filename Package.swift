// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StorylyPlacement",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Main product that users will import
        .library(
            name: "StorylyPlacement",
            targets: ["StorylyPlacementWrapper"]
        ),
        // Optional products that users can choose to include
        .library(
            name: "StorylyStoryBarWrapper",
            targets: ["StorylyStoryBar"]
        ),
        .library(
            name: "StorylyBannerWrapper", 
            targets: ["StorylyBanner"]
        ),
        .library(
            name: "StorylyVideoFeedWrapper",
            targets: ["StorylyVideoFeed"]
        ),
        .library(
            name: "StorylySwipeCardWrapper",
            targets: ["StorylySwipeCard"]
        )
    ],
    dependencies: [
        // Add any external dependencies here if needed
    ],
    targets: [
        // Binary targets (the actual xcframeworks)
        .binaryTarget(
            name: "StorylyCore",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/0.0.1/StorylyCore.zip",
            checksum: "bbc23342af073402551a460f3aa68e8077dcb3dddcd9b52a2e8192e38ec961f2"
        ),
        .binaryTarget(
            name: "StorylyCoreInternal", 
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/0.0.1/StorylyCoreInternal.zip",
            checksum: "bbc23342af073402551a460f3aa68e8077dcb3dddcd9b52a2e8192e38ec961f2"
        ),
        .binaryTarget(
            name: "StorylyPlacement",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/0.0.1/StorylyPlacement.zip",
            checksum: "bbc23342af073402551a460f3aa68e8077dcb3dddcd9b52a2e8192e38ec961f2"
        ),
        .binaryTarget(
            name: "StorylyStoryBar",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/0.0.1/StorylyStoryBar.zip",
            checksum: "bbc23342af073402551a460f3aa68e8077dcb3dddcd9b52a2e8192e38ec961f2"
        ),
        .binaryTarget(
            name: "StorylyBanner",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/0.0.1/StorylyBanner.zip",
            checksum: "bbc23342af073402551a460f3aa68e8077dcb3dddcd9b52a2e8192e38ec961f2"
        ),
        .binaryTarget(
            name: "StorylyVideoFeed",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/0.0.1/StorylyVideoFeed.zip",
            checksum: "bbc23342af073402551a460f3aa68e8077dcb3dddcd9b52a2e8192e38ec961f2"
        ),
        .binaryTarget(
            name: "StorylySwipeCard",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/0.0.1/StorylySwipeCard.zip",
            checksum: "bbc23342af073402551a460f3aa68e8077dcb3dddcd9b52a2e8192e38ec961f2"
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
            name: "StorylyPlacementWrapper",
            dependencies: [
                "StorylyPlacement",
                "StorylyCore",
                "StorylyCoreInternal"
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
        )
    ],
    swiftLanguageVersions: [.v5]
)