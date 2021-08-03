// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "LongformSite",
    products: [
        .executable(
            name: "LongformSite",
            targets: ["LongformSite"]
        )
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.7.0")
    ],
    targets: [
        .target(
            name: "LongformSite",
            dependencies: ["Publish"]
        )
    ]
)