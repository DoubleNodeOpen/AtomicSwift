// swift-tools-version:5.7
//
//  Package.swift
//

import PackageDescription

let package = Package(
    name: "AtomicSwift",
    platforms: [
        .iOS(.v16),
        .tvOS(.v16),
        .macCatalyst(.v16),
        .macOS(.v13),
        .watchOS(.v9),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "AtomicSwift",
            targets: ["AtomicSwift"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "AtomicSwift",
            dependencies: []),
        .testTarget(
            name: "AtomicSwiftTests",
            dependencies: ["AtomicSwift"]),
    ],
    swiftLanguageVersions: [.v5]
)
