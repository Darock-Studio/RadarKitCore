// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RadarKitCore",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(name: "RadarKitCore", targets: ["RadarKitCore", "_RadarKitCoreDependenciesWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Darock-Studio/DarockFoundation", from: "1.0.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "RadarKitCore", url: "https://github.com/darock-studio/radarkitcore/releases/download/1.0.2/RadarKitCore.xcframework.zip", checksum: "ae6d925efcd55a01e58904c5f66025de5893390e36790072f401853278153ccc"),
        .target(name: "_RadarKitCoreDependenciesWrapper", dependencies: [
            "DarockFoundation"
        ])
    ]
)
