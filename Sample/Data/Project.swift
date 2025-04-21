import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeStaticFramework(
    name: "Data",
    dependencies: [
        .project(target: "Domain", path: .relativeToRoot("Sample/Domain")),
    ]
)
