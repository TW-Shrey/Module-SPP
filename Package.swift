// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPP_Package",
    platforms: [.iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SPP_Package",
            targets: ["SPP_Package"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
         .package(url: "https://github.com/TW-Shrey/pcaf-mbl-cb.git", branch: "main"),
         .package(url: "https://github.com/TW-Shrey/pcaf-mbl-sf-intfc-pkg.git", branch: "main"),
         .package(url: "https://github.com/TW-Shrey/common-auth.git", branch: "main")
         
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SPP_Package",
            dependencies: [.product(name: "pcaf-mbl-cb", package: "pcaf-mbl-cb"),
                           .product(name: "pcaf-mbl-sf-intfc-pkg", package: "pcaf-mbl-sf-intfc-pkg"),
                           .product(name: "SwiftOkta", package: "common-auth")]),
        .testTarget(
            name: "SPP_PackageTests",
            dependencies: [.product(name: "pcaf-mbl-cb", package: "pcaf-mbl-cb"),
                           .product(name: "pcaf-mbl-sf-intfc-pkg", package: "pcaf-mbl-sf-intfc-pkg"),
                           .product(name: "SwiftOkta", package: "common-auth")]),
    ]
)
