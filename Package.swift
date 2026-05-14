// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "example-lib-spm",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "ExampleLib",
            targets: ["ExampleLibTarget"])
    ],
    targets: [
        .binaryTarget(
            name: "ExampleLib",
            url:"https://trialdedos0.jfrog.io/artifactory/autocabtrial-libs-snapshot-local/com/autocab/spikes/examplelib-spm/1.0.0-SNAPSHOT/examplelib-spm-1.0.0-20260514.130826-6.zip",
            checksum: "79ca18bc9769102ecfa4b07f3a39c58315319cf79fe698ee32840dabb7fe7dd3"
        ),
        .target(name: "ExampleLibTarget", dependencies: [.target(name: "ExampleLib")]),
    ])
