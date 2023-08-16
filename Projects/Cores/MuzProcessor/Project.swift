import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project.makeModule(
    name: "MuzProcessor",
    product: .staticFramework,
    dependencies: [
        .Project.Core.ThirdPartyLibManager
    ]
)
