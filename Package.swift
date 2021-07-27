// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "macseum.dk",
    products: [
        .library(
            name: "macseum.dk",
            targets: ["macseum.dk"]),
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish", .upToNextMajor(from: "0.8.0")),
    ],
    targets: [
        .target(
            name: "macseum.dk",
            dependencies: [.product(name: "Publish", package: "publish")]),
        .testTarget(
            name: "macseum.dkTests",
            dependencies: ["macseum.dk"]),
    ])
