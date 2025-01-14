// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftletUtilities",
    platforms: [.iOS(.v15), .macOS(.v14), .tvOS(.v17), .watchOS(.v10)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SwiftletUtilities",
            targets: ["SwiftletUtilities"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/Appracatappra/LogManager", .upToNextMajor(from: "1.0.1")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SwiftletUtilities",
            dependencies: ["LogManager"]),
        .testTarget(
            name: "SwiftletUtilitiesTests",
            dependencies: ["SwiftletUtilities"]),
    ]
)
