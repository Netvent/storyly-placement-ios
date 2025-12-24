// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StorylyPlacement",
    platforms: [
        .iOS(.v13)
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
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.1.0/StorylyCore.zip",
            checksum: "b93aa74daca26dd8a3aaae38a612b4848aa8ac394e1e98ea1d8cf9fd2043f872"
        ),
        .binaryTarget(
            name: "StorylyCoreInternal", 
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.1.0/StorylyCoreInternal.zip",
            checksum: "3c07509c4ff2b226598bd4a83d717c7a251edd98b33c45832b0ddca5608ec7e5"
        ),
        .binaryTarget(
            name: "StorylyAnalytics", 
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.1.0/StorylyAnalytics.zip",
            checksum: "c12a92f318f68292184ba6976d684808baee44f596db1c5fe2e8369d32dd5e86"
        ),
        .binaryTarget(
            name: "StorylyPlacement",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.1.0/StorylyPlacement.zip",
            checksum: "27e8efd6e3f5ba1a055a3291e663b0c2f5477a7d0fe0a0925f3218cf5cbeca6a"
        ),
        .binaryTarget(
            name: "StorylyStoryBar",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.1.0/StorylyStoryBar.zip",
            checksum: "9386cd7420861b0d85f04060d3ff8e6bc0534bf409415e01f248b7176edcc8fc"
        ),
        .binaryTarget(
            name: "StorylyBanner",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.1.0/StorylyBanner.zip",
            checksum: "2e364e11d8b4e9633d949eb89d817f0a762259f11f520f1fd0b2fda98667c45a"
        ),
        .binaryTarget(
            name: "StorylyVideoFeed",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.1.0/StorylyVideoFeed.zip",
            checksum: "193e0e3283fd83e0332d2bd986a3118c04b95ee76f2b14510f8dcfa732e62950"
        ),
        .binaryTarget(
            name: "StorylySwipeCard",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.1.0/StorylySwipeCard.zip",
            checksum: "b04b1b5d13780d5b29a33e8e586d69f3b47d523ee0b885d4d1b2e4ade5fdb96c"
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
        )
    ],
    swiftLanguageVersions: [.v5]
)