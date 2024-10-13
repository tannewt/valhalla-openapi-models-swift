// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ValhallaModels",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6), .visionOS(.v1)],
    dependencies: [
        .package(url: "https://github.com/Flight-School/AnyCodable", .upToNextMajor(from: "0.6.1")),
    ],
    targets: [
        .target(
            name: "ValhallaConfig",
            dependencies: ["AnyCodable"],
            path: "Sources/ValhallaConfig"
        ),
        .target(
            name: "ValhallaModels",
            dependencies: ["AnyCodable"],
            path: "Sources/ValhallaModels"
        ),
        .testTarget(
            name: "Tests",
            dependencies: ["ValhallaConfig", "ValhallaModels"])
    ]
)
