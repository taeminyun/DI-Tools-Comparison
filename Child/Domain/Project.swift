import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeStaticFramework(
    name: "ChildDomain",
    dependencies: [
        .project(target: "ChildDI", path: .relativeToRoot("Child/DI")),
    ]
)
