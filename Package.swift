// swift-tools-version: 5.6

///
import PackageDescription

///
let package = Package(
    name: "StrideabilityTestModule",
    products: [
        .library(
            name: "StrideabilityTestModule",
            targets: ["StrideabilityTestModule"]
        ),
    ],
    dependencies: [
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/FoundationToolkit.git",
            from: "0.1.0"
        )
    ],
    targets: [
        
        ///
        .target(
            name: "StrideabilityTestModule",
            dependencies: [
                
                ///
                .product(
                    name: "FoundationTestToolkit",
                    package: "FoundationToolkit"
                )
            ]
        ),
        
        ///
        .testTarget(
            name: "StrideabilityTestModule-tests",
            dependencies: ["StrideabilityTestModule"]
        ),
    ]
)
