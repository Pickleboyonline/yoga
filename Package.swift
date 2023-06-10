// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "yoga",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_10),
        .watchOS(.v2),
        .tvOS(.v10),
    ],
    products: [
        .library(
            name: "Yoga",
            targets: ["Yoga"]
        ),
    ],
    targets: [
        .target(
            name: "Yoga",
            path: ".",
            sources: ["yoga"],
            publicHeadersPath: "yoga/include",
            cSettings: [
                .headerSearchPath("."),
            ]
        ),
    ],
    cLanguageStandard: .gnu11,
    cxxLanguageStandard: .gnucxx14
)
