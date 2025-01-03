// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ProcessControl",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ProcessControl",
            targets: ["ProcessControl"]),
    ],
    dependencies: [
        .package(url: "https://github.com/RickStreet/DoubleKit.git", from: "1.0.8"),
        .package(url: "https://github.com/RickStreet/AxisSpacing.git", from: "1.1.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ProcessControl",
                dependencies: ["DoubleKit", "AxisSpacing"]),
        .testTarget(
            name: "ProcessControlTests",
            dependencies: ["ProcessControl", "DoubleKit", "AxisSpacing"]),
    ]
)
