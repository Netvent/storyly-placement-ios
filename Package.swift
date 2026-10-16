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
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.17.1/StorylyCore.zip",
            checksum: "1927092101d8ce6cadc13318026547f36715aaabf8febdcbcc2470cd1d7a9662"
        ),
        .binaryTarget(
            name: "StorylyCoreInternal",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.17.1/StorylyCoreInternal.zip",
            checksum: "fa480612f0e93a1f55722601b83e262c5709c12a88347780149cd3b0840458db"
        ),
        .binaryTarget(
            name: "StorylyRetailMedia",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.17.1/StorylyRetailMedia.zip",
            checksum: "ca44eb18c91c5a704b70a79b6c1cad2f31366481b46f2347090300fc0c7d27f4"
        ),
        .binaryTarget(
            name: "StorylyAnalytics",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.17.1/StorylyAnalytics.zip",
            checksum: "55998fd7ecc0b4989e0a76bf4f181bd3b407ab07451fc08f6b5e28d2b57c3f1a"
        ),
        .binaryTarget(
            name: "StorylyPlacement",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.17.1/StorylyPlacement.zip",
            checksum: "6b5620f81d6bde9bd9527c0f3cf84c29b33c8b777ed47ef73b2e12933162a210"
        ),
        .binaryTarget(
            name: "StorylyStoryBar",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.17.1/StorylyStoryBar.zip",
            checksum: "2b5d5a1382925d62286eda77daa3a9f8f81e812410104fa51604d82e1642b1dc"
        ),
        .binaryTarget(
            name: "StorylyBanner",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.17.1/StorylyBanner.zip",
            checksum: "58132893de19b275fc585c8f818a761c9f23b3d3a4597fd9eb32be1817f598a1"
        ),
        .binaryTarget(
            name: "StorylyVideoFeed",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.17.1/StorylyVideoFeed.zip",
            checksum: "e3ea4ab14702a132483c6c253463cb0e4297f0e74331367fe63776231de96187"
        ),
        .binaryTarget(
            name: "StorylySwipeCard",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.17.1/StorylySwipeCard.zip",
            checksum: "06cbea639d78d95892e378a6178c16acd6121f579228176c1a250cc50b20283a"
        ),
        .binaryTarget(
            name: "StorylyCanvas",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.17.1/StorylyCanvas.zip",
            checksum: "92c3cba3968c1bb72c17a3786742fc7ce6d6f875e89f41575c3d8c675e6a8011"
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
