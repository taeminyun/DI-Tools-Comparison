import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeStaticFramework(
    name: "Presentation",
    dependencies: [
        .project(target: "Domain", path: .relativeToRoot("Sample/Domain")),
        .project(target: "Data", path: .relativeToRoot("Sample/Data")),
    ]
)
