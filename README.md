# BlueSea iOS Adapter for AppLovin MAX Mediation 

The BlueSea iOS Adapter for AppLovin MAX Mediation, distributed via Swift Package Manager.

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/blueseasx/BlueSeaSDK-Max-Adapter-Swift-Package
   ```
3. Select **Exact Version** and enter the encoded version (e.g. `1070100.0.0` for adapter version `1.7.1.0`).
4. Add the `BlueSeaMaxAdapter` product to your app target.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/blueseasx/BlueSeaSDK-Max-Adapter-Swift-Package.git",
        exact: "1070100.0.0"
    )
]
```

## Included dependencies

- [`BlueSeaSDK`](https://github.com/blueseasx/BlueSeaSDK-Swift-Package) (pinned to the version certified for this adapter release)
- [`AppLovinSDK`](https://github.com/AppLovin/AppLovin-MAX-Swift-Package) (>= 13.6.3)