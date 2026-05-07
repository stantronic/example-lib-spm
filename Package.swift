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
            url: "https://trialdedos0.jfrog.io/artifactory/autocabtrial-libs-snapshot/com/autocab/spikes/examplelib-spm/1.0.0-SNAPSHOT/examplelib-spm-1.0.0-20260506.141851-1.zip",
            checksum: "c548b7ed168bff9b5992af6a734b1f24da98c79e059079a222dbae6ed2df2ffc"
        ),
        .target(name: "ExampleLibTarget", dependencies: [.target(name: "ExampleLib")]),
    ])
