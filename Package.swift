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
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.3.1/StorylyCore.zip",
            checksum: "e9694e33f584ecbc7a9d77d3fef399c1a0e8c66af89302f9b006dc73f1dfc8b7"
        ),
        .binaryTarget(
            name: "StorylyCoreInternal",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.3.1/StorylyCoreInternal.zip",
            checksum: "7b97afe043f4816fde6c4c1cc421effac7ce70cea062f99df7082936708f5881"
        ),
        .binaryTarget(
            name: "StorylyAnalytics",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.3.1/StorylyAnalytics.zip",
            checksum: "5635cd60ade3f2b79822b8b8a90ba1fcdc2007c633dd785579b6698e05b678d4"
        ),
        .binaryTarget(
            name: "StorylyPlacement",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.3.1/StorylyPlacement.zip",
            checksum: "6241ed1de22792f5d94e561d321c99ca4cf3dc71a389a28d5dd676c186a0189f"
        ),
        .binaryTarget(
            name: "StorylyStoryBar",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.3.1/StorylyStoryBar.zip",
            checksum: "abbdce9f497ce67934471926ab3dc9b4ff73aeeca5a51d5ed9059f7d6f75e58c"
        ),
        .binaryTarget(
            name: "StorylyBanner",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.3.1/StorylyBanner.zip",
            checksum: "68c18ef2a5859366bf27deb773bac9e8796ff60dc0155559f2a97ba613c87119"
        ),
        .binaryTarget(
            name: "StorylyVideoFeed",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.3.1/StorylyVideoFeed.zip",
            checksum: "d122c7d1acae502c6d633e0e25c7a60745ca10b0799192a3e93df254d930b17f"
        ),
        .binaryTarget(
            name: "StorylySwipeCard",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.3.1/StorylySwipeCard.zip",
            checksum: "6fea76811b37705ee00033a70344c1c99269d266154d15071bf3701659e15ad8"
        ),
        .binaryTarget(
            name: "StorylyCanvas",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.3.1/StorylyCanvas.zip",
            checksum: "5425f11cd2e4945ee74852746bbecb7262b9f396c789af208d88678b4c784166"
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