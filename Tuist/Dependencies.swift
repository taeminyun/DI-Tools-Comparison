import ProjectDescription
import ProjectDescriptionHelpers

let dependencies = Dependencies(
    swiftPackageManager: .init(
        [
            Package.package(url: "https://github.com/Swinject/Swinject.git",                    .exact("2.9.1")),
            Package.package(url: "https://github.com/pointfreeco/swift-dependencies.git",       .exact("1.3.")),
            Package.package(url: "https://github.com/pointfreeco/xctest-dynamic-overlay.git",   .exact("1.1.2")),
            Package.package(url: "https://github.com/pointfreeco/swift-clocks.git",             .exact("1.0.2")),
            Package.package(url: "https://github.com/pointfreeco/combine-schedulers.git",       .exact("1.0.0")),
            Package.package(url: "https://github.com/uber/needle.git",                          .exact("0.25.1")),
        ],
        productTypes: [:],
        baseSettings: .settings(
            configurations: [
                .debug(name: "Debug", settings: [:]),
                .release(name: "Release", settings: [:]),
            ]
        ),
        targetSettings: [:]
    ),
    platforms: [.iOS]
)
