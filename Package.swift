// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BlueSeaMaxAdapter",
    defaultLocalization: "en",
    platforms: [.iOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "BlueSeaMaxAdapter",
            targets: ["BlueSeaMaxAdapterTarget"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(
            url: "https://github.com/blueseasx/BlueSeaSDK-Swift-Package.git",
            exact: "1.7.1"
        ),
        .package(
            url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", 
            from: "13.6.3"
        ),

    ],
    targets: [
            // This is a wrapper target to configure various settings required by main binary target.
            .target(
                name: "BlueSeaMaxAdapterTarget",
                dependencies: [
                    .target(name: "BlueSeaMaxAdapter"),
                    .product(name: "BlueSeaSDK", package: "BlueSeaSDK-Swift-Package"),
                    .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                ],
                path: "Sources",
                linkerSettings: [
                    // NOTE: Swift Package Manager currently does not allow dependencies with unsafeFlags, unless a specific branch/commit is used.
                    // For now, these flags should be added manually to the project for integration.
                    .unsafeFlags(["-ObjC"])
                ]
            ),
            .binaryTarget(
                name: "BlueSeaMaxAdapter",
                url: "https://sdk.cdn.blueseasx.com/ios/V1.7.1/2026090900/adapter-V1.7.1.0/BlueSeaMaxAdapter.xcframework.zip",
                checksum: "e3d5a9aea7fceca4bcece45f4859e0d0bae39ff406917eb10203c40f5973018e"
            ),
        ]
)
