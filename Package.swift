// swift-tools-version:5.6
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
            exact: "1.9.1"
        ),
        .package(
            url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", 
            from: "13.2.0"
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
                path: "Sources"
            ),
            .binaryTarget(
                name: "BlueSeaMaxAdapter",
                url: "https://sdk.cdn.blueseasx.com/ios/V1.9.1/2026101000/adapter-V1.9.1.0/BlueSeaMaxAdapter.xcframework.zip",
                checksum: "6ca600ce77162231596af571dafa328eb2c7b01ee2647527a1d17ced12bb70d8"
            ),
        ]
)
