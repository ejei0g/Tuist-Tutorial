import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project.makeModule(
    name: "Authentication",
    product: .staticFramework,
    dependencies: [
        .Project.Core.ThirdPartyLibManager
    ]
)
