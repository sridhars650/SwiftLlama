// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SwiftLlama",
    platforms: [
        .macOS(.v12), .iOS(.v15)
    ],
    products: [
        .library(
            name: "SwiftLlama",
            targets: ["SwiftLlama"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "llama",
            path: "Frameworks/llama.xcframework"
        ),
        .target(
            name: "SwiftLlama",
            dependencies: ["llama"]
        ),
        .testTarget(
            name: "SwiftLlamaTests",
            dependencies: ["SwiftLlama"]
        ),
    ]
)