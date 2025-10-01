// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.17.6"

let package = Package(
    name: "BNBLips",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBLips",
            targets: [
                "BNBLips",
                "BNBLips_BNBSdkCore",
                "BNBLips_BNBEffectPlayer",
                "BNBLips_BNBScripting",
                "BNBLips_BNBFaceTracker"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBEffectPlayer.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBScripting.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBFaceTracker.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBLips",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.17.6/BNBLips.zip",
            checksum: "225c18581c9c7b72f744d3012c3bc73d16da28bd70fd62823a4ea219296fef95"
        ),
        .target(
            name: "BNBLips_BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBLips_BNBEffectPlayer",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBLips_BNBScripting",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
        .target(
            name: "BNBLips_BNBFaceTracker",
            dependencies: [
                .product(
                    name: "BNBFaceTracker",
                    package: "BNBFaceTracker"
                ),
            ]
        ),
    ]
)
