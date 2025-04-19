import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeStaticFramework(
    name: "SamplePresentation",
    dependencies: [
        .project(target: "SampleDomain", path: .relativeToRoot("SampleDomain")),
        .project(target: "SampleData", path: .relativeToRoot("SampleData")),
    ]
)
