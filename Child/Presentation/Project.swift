import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeStaticFramework(
    name: "ChildPresentation",
    dependencies: [
        .project(target: "ChildDomain", path: .relativeToRoot("Child/Domain")),
    ]
)
