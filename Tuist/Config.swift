import ProjectDescription

let config = Config(
    swiftVersion: "5",
    plugins: [
        .local(path: .relativeToManifest("../../Plugins/DIToolsComparison")),
    ]
)
