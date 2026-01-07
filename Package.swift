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
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.2.0/StorylyCore.zip",
            checksum: "b4ddbab7ce140bb29811f365805722a9798255cf5e9819c22f46738df6cf56ed"
        ),
        .binaryTarget(
            name: "StorylyCoreInternal", 
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.2.0/StorylyCoreInternal.zip",
            checksum: "eaa423064237b30d5b4067763a1b63d2625a2955addba98b175905e0cf8eeeaf"
        ),
        .binaryTarget(
            name: "StorylyAnalytics", 
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.2.0/StorylyAnalytics.zip",
            checksum: "74ae382613bdd09752184877515b86d152765004c760439bbad48b5ee5d27784"
        ),
        .binaryTarget(
            name: "StorylyPlacement",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.2.0/StorylyPlacement.zip",
            checksum: "7ea6c5828bd679ee12e2e48173b2944d758198e502bf3d1857a9f81536c5fdc8"
        ),
        .binaryTarget(
            name: "StorylyStoryBar",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.2.0/StorylyStoryBar.zip",
            checksum: "706a5434f13dd5e2f9f524a8b1ffe01adb3ed0250d8712be323c0a8f181eb2c6"
        ),
        .binaryTarget(
            name: "StorylyBanner",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.2.0/StorylyBanner.zip",
            checksum: "6f2c33e62e3273a369163e150744b63d7b1d87434adaa5daffce69b627e06411"
        ),
        .binaryTarget(
            name: "StorylyVideoFeed",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.2.0/StorylyVideoFeed.zip",
            checksum: "2331affb09b48a0b55f58789ee75646efefa058bd09aa4838e2f1f7f0d76300f"
        ),
        .binaryTarget(
            name: "StorylySwipeCard",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.2.0/StorylySwipeCard.zip",
            checksum: "8cd7da98a21a5c8f73f1d255545477ecc30bb84b82b57034453f597b7fb83391"
        ),
        .binaryTarget(
            name: "StorylyCanvas",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.2.0/StorylyCanvas.zip",
            checksum: "0ea6ee8cf92adc4db00cb152d4bb3e5b230953636f5cccbc95a7686c524097d0"
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