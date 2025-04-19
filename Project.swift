import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

/*
                +-------------+
                |             |
                |     App     | Contains DIToolsComparison App target and DIToolsComparison unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+

 */

// MARK: - Project

// Local plugin loaded
let localHelper = LocalHelper(name: "MyPlugin")

// Creates our project using a helper function defined in ProjectDescriptionHelpers
let project = Project.app(
    name: "DIToolsComparison",
    destinations: .iOS,
    additionalTargets: ["DIToolsComparisonKit", "DIToolsComparisonUI"],
    dependencies: [
        .external(name: "Swinject"),
        .external(name: "Dependencies"),
        .external(name: "NeedleFoundation"),
        .project(target: "SamplePresentation",    path: .relativeToRoot("SamplePresentation")),
        .project(target: "SampleDomain",          path: .relativeToRoot("SampleDomain")),
        .project(target: "SampleData",            path: .relativeToRoot("SampleData"))
    ]
)
