import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Authentication",
    product: .staticFramework,
    dependencies: [
        .Project.ThirdPartyLib
    ]
)
