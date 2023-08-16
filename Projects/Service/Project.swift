import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project.makeModule(
    name: "Utils",
    product: .staticFramework,
    dependencies: [
        .Project.ThirdPartyLib
    ]
)
