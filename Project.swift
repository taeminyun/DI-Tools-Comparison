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
        .project(target: "Presentation", path: .relativeToRoot("Presentation")),
        .project(target: "Domain",      path: .relativeToRoot("Domain")),
        .project(target: "Data",        path: .relativeToRoot("Data"))
    ]
)
