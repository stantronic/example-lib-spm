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
            url: "https://trialdedos0.jfrog.io/artifactory/autocabtrial-libs-snapshot-local/com/autocab/spikes/examplelib-spm/1.0.0-SNAPSHOT/examplelib-spm-1.0.0-20260507.145217-2.zip",
            checksum: "77802113c294267c964e1a8d6e3ffd75b5382686b98e545936ae41266e6a5d86"
        ),
        .target(name: "ExampleLibTarget", dependencies: [.target(name: "ExampleLib")]),
    ])
