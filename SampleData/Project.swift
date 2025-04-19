import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeStaticFramework(
    name: "SampleData",
    dependencies: [
        .project(target: "SampleDomain", path: .relativeToRoot("SampleDomain")),
    ]
)
