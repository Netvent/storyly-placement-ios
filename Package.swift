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
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.0.0/StorylyCore.zip",
            checksum: "e018ff3adb877849a48a7110a366781346240385cf57151274aba69f3fec3e6a"
        ),
        .binaryTarget(
            name: "StorylyCoreInternal", 
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.0.0/StorylyCoreInternal.zip",
            checksum: "4800ffb7001923425e70977fe1ed3c90b83bccd38b2c3b297a0d30f60a6140bd"
        ),
        .binaryTarget(
            name: "StorylyAnalytics", 
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.0.0/StorylyAnalytics.zip",
            checksum: "827fcae18678102025b31f2ed3d78992ac4d8c59609c58418e60062c3a5ab921"
        ),
        .binaryTarget(
            name: "StorylyPlacement",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.0.0/StorylyPlacement.zip",
            checksum: "740f93f4389bb32f199218256b8d01864cb64e150c06d170b86325e53eb24a03"
        ),
        .binaryTarget(
            name: "StorylyStoryBar",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.0.0/StorylyStoryBar.zip",
            checksum: "75ccca20fb68eb1fcd1f2c83fc216e7f14a111f8fbf4ee2515f81b7a0223c761"
        ),
        .binaryTarget(
            name: "StorylyBanner",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.0.0/StorylyBanner.zip",
            checksum: "9464f4fc202603f024e623ea1c379c12ef2986f651dd4ae6948bcd4014282071"
        ),
        .binaryTarget(
            name: "StorylyVideoFeed",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.0.0/StorylyVideoFeed.zip",
            checksum: "ec70c7752ca5e213d55dc000fbdb3df9d9b73583b194337b533fa8b30ce0160f"
        ),
        .binaryTarget(
            name: "StorylySwipeCard",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/placement-sdk/1.0.0/StorylySwipeCard.zip",
            checksum: "d971819e463945aabd60cb6937993b849fee891ecd8f74cd4eb9659df7c5e11e"
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