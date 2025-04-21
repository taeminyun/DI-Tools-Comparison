import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeStaticFramework(
    name: "ColorData",
    dependencies: [
        .project(target: "ColorDomain", path: .relativeToRoot("Color/Domain")),
    ]
)
