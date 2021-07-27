// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "macseum.dk",
    products: [
        .library(
            name: "Macseum",
            targets: ["Macseum"]),
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish", .upToNextMajor(from: "0.8.0")),
    ],  
    targets: [
        .target(
            name: "Macseum",
            dependencies: [.product(name: "Publish", package: "publish")]),
        .testTarget(
            name: "MacseumTests",
            dependencies: ["Macseum"]),
    ])
