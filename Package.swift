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
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.11.0/StorylyCore.zip",
            checksum: "6f949daee5bbbda41fc2665be9e2e17da285ee064108c428758c8c1a49620f67"
        ),
        .binaryTarget(
            name: "StorylyCoreInternal",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.11.0/StorylyCoreInternal.zip",
            checksum: "3cd8f10d41385f454df8365fe6410accd68dd8a875108e85f195cf89787f48d7"
        ),
        .binaryTarget(
            name: "StorylyRetailMedia",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.11.0/StorylyRetailMedia.zip",
            checksum: "fd54759baf871e9ac4152661b60e4d1d2b605c5884cd82c2bebe691de1b2eda7"
        ),
        .binaryTarget(
            name: "StorylyAnalytics",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.11.0/StorylyAnalytics.zip",
            checksum: "05a82653ec77b0b88a0716ee32d54ae61f83a3eb1dcdcf32fa08de63d94ceac3"
        ),
        .binaryTarget(
            name: "StorylyPlacement",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.11.0/StorylyPlacement.zip",
            checksum: "abbe8e579bf377d873ad0499eb2dd4c75cbd96a88616b75a791e00ef330b1fe8"
        ),
        .binaryTarget(
            name: "StorylyStoryBar",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.11.0/StorylyStoryBar.zip",
            checksum: "fd964123b431df0cad80d6f98b6f4906147901c514317c898454a0e454807d29"
        ),
        .binaryTarget(
            name: "StorylyBanner",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.11.0/StorylyBanner.zip",
            checksum: "e6847391ba009cc491007e0c7726601ff5649584b4d101a5b47c7fb280856dab"
        ),
        .binaryTarget(
            name: "StorylyVideoFeed",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.11.0/StorylyVideoFeed.zip",
            checksum: "6d28e33c97cf4867fb39bd4499497ad3f20f330254652d7c1a40bb6bcbacf502"
        ),
        .binaryTarget(
            name: "StorylySwipeCard",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.11.0/StorylySwipeCard.zip",
            checksum: "ae4c9ab2fac8bdaeded15730932cf6dbb83296dc014be5f0eba9cce0171b3f4c"
        ),
        .binaryTarget(
            name: "StorylyCanvas",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.11.0/StorylyCanvas.zip",
            checksum: "4954eedaf95042f9ce366c7ff3414fdf8d085ad686b82e304429c6fe1714f4fd"
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
