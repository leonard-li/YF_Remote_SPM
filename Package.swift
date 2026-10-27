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
            from: "5.3.6"
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
            name: "YF_DataAcqu_Binary",
            url: "https://mvn.yifants.cn/artifactory/fineboost-spm/remote/1.2.8/YFConfig.xcframework.zip",
            checksum: "2c21eaf264f619c7a75ecba46805a2713cf78691881f1a3f104e45abf2041e08"
        )
    ]
)
