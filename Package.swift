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
            from: "5.3.7"
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
            url: "https://mvn.yifants.cn/artifactory/fineboost-spm/remote/1.2.9/YFConfig.xcframework.zip",
            checksum: "4aa183d55dfd4d9e09bba2d1aad9307ba4973f74511ae27a95670d802c0e49b1"
        )
    ]
)