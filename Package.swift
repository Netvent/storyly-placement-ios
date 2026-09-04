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
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.13.0/StorylyCore.zip",
            checksum: "d61b8aa294eebb93eaccf05bb660fa8d9ce1ebf1262f97a70fe81fad184cb7c2"
        ),
        .binaryTarget(
            name: "StorylyCoreInternal",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.13.0/StorylyCoreInternal.zip",
            checksum: "ac100c7908c25dfd060b13d1b0ddd775e3d08c0b37adb596ff6cdaf012ac8029"
        ),
        .binaryTarget(
            name: "StorylyRetailMedia",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.13.0/StorylyRetailMedia.zip",
            checksum: "d31c7c937e86f20cca18e60b7b950c0a323502ff3a1e58956fc1208de0348860"
        ),
        .binaryTarget(
            name: "StorylyAnalytics",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.13.0/StorylyAnalytics.zip",
            checksum: "dc2dfde21be78d453ff65e9a4aabc1b79029ec28220826660f48f5828b76ebd0"
        ),
        .binaryTarget(
            name: "StorylyPlacement",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.13.0/StorylyPlacement.zip",
            checksum: "ac84811101659e0052588eb7cfdbcc59c615190678db8ba37725fef4a70d878d"
        ),
        .binaryTarget(
            name: "StorylyStoryBar",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.13.0/StorylyStoryBar.zip",
            checksum: "ec67115e0b0275795e33cfa1a3434ac89d37b3b510466c24a8f12de5f326a417"
        ),
        .binaryTarget(
            name: "StorylyBanner",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.13.0/StorylyBanner.zip",
            checksum: "48bde081751368932de94f55d414c01c0d698a5f9c9e2bc132cd6f3488082dbf"
        ),
        .binaryTarget(
            name: "StorylyVideoFeed",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.13.0/StorylyVideoFeed.zip",
            checksum: "448503fda514da938afa8658c7df94ee72379bf9ec3474fc5b2e50344aad0242"
        ),
        .binaryTarget(
            name: "StorylySwipeCard",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.13.0/StorylySwipeCard.zip",
            checksum: "659d906a007e631ffbc6bac22a327f8643edb4f26b9abae77140fb78daf69852"
        ),
        .binaryTarget(
            name: "StorylyCanvas",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.13.0/StorylyCanvas.zip",
            checksum: "2dfeed7c6fceaa39ed067c282169b06e9a72ef79bb480f4b26cb8bd0b94c1876"
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
