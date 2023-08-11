import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Utils",
    product: .staticFramework,
    dependencies: [
        .Project.ThirdPartyLib
    ]
)
