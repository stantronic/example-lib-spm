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
            url: "https://trialdedos0.jfrog.io/artifactory/autocabtrial-libs-snapshot-local/com/autocab/spikes/examplelib-spm/1.0.0-SNAPSHOT/examplelib-spm-1.0.0-20260514.143710-8.zip",
            checksum: "dd5da84a7bec726fb74decb3888c39df2235459f38db923fca9a0ec0f6fddefb"
        ),
        .target(name: "ExampleLibTarget", dependencies: [.target(name: "ExampleLib")]),
    ])
