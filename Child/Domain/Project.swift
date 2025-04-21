import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeStaticFramework(
    name: "ChildDomain",
    dependencies: [
        .project(target: "ColorDomain", path: .relativeToRoot("Color/Domain")),
        .project(target: "ColorData", path: .relativeToRoot("Color/Data")),

        .project(target: "StringDomain", path: .relativeToRoot("String/Domain")),
        .project(target: "StringData", path: .relativeToRoot("String/Data")),
    ]
)
