import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeStaticFramework(
    name: "StringData",
    dependencies: [
        .project(target: "StringDomain", path: .relativeToRoot("String/Domain")),
    ]
)
