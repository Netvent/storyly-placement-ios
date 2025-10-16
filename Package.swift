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
            checksum: "a5ce0bc153953cd67021eaa7b038ad3e74e51d298ab793f5ba2b4208a5b65185"
        ),
        .binaryTarget(
            name: "StorylyCoreInternal", 
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/0.0.1/StorylyCoreInternal.zip",
            checksum: "b5d89bfe2b19d382502e269d18d7e069072c8b54471449304c9353c7c3f46d2f"
        ),
        .binaryTarget(
            name: "StorylyPlacement",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/0.0.1/StorylyPlacement.zip",
            checksum: "631d1a65e780f97e4e309157da1bc5d00b2fadefaad7aec424970b6500f88d11"
        ),
        .binaryTarget(
            name: "StorylyStoryBar",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/0.0.1/StorylyStoryBar.zip",
            checksum: "ca1b684767cea3e3e49873a7b9e689c5d0458b16e0de88f164ea0fc2885fdd7e"
        ),
        .binaryTarget(
            name: "StorylyBanner",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/0.0.1/StorylyBanner.zip",
            checksum: "1af2bdbae92a80ee23979ba8c77029ddf9af0df74755ef75b68a6235d2b9ff31"
        ),
        .binaryTarget(
            name: "StorylyVideoFeed",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/0.0.1/StorylyVideoFeed.zip",
            checksum: "827908fc24b5d8a3006c95cc58958ab628df1060dca25644cd09451a454227ca"
        ),
        .binaryTarget(
            name: "StorylySwipeCard",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/0.0.1/StorylySwipeCard.zip",
            checksum: "fd167d47929072d2fc8bdf777d9225a2ad5d66e58245d0e7381a9e8a7ccd0013"
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