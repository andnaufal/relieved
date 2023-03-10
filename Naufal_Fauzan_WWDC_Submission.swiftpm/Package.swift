// swift-tools-version: 5.5

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "Relieved",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "Relieved",
            targets: ["AppModule"],
            bundleIdentifier: "co.andnaufal.Naufal-Fauzan-WWDC-Submission",
            teamIdentifier: "F8ARL6672P",
            displayVersion: "1.0",
            bundleVersion: "1",
            iconAssetName: "AppIcon",
            accentColorAssetName: "AccentColor",
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ],
            capabilities: [
                .camera(purposeString: "This app requires access to the photo library to upload your profile photo.")
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: ".",
            resources: [
                .process("Resources")
            ]
        )
    ]
)
