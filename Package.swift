// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YF_Remote",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "YF_Remote",
            targets: ["YF_Remote_Target"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/leonard-li/YF_DataAcqu_SPM.git",
            from: "5.3.8"
        )
    ],
    targets: [
        .target(
            name: "YF_Remote_Target",
            dependencies: [
                "YF_Remote_Binary",
                .product(name: "YF_DataAcqu", package: "YF_DataAcqu_SPM")
            ]
        ),
        .binaryTarget(
            name: "YF_Remote_Binary",
            url: "https://mvn.yifants.cn/artifactory/fineboost-spm/remote/1.3.0/YFConfig.xcframework.zip",
            checksum: "e975856c8054205950f2bd6f496dcf5eb09fc92db0fcf4310590dac6c36d6f12"
        )
    ]
)