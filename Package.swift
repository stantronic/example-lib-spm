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
            checksum: "4de90791084b5106ba6a3959197237016db90364a1bf6b8eb71bd1fe5be6aab8"
        ),
        .target(name: "ExampleLibTarget", dependencies: [.target(name: "ExampleLib")]),
    ])
