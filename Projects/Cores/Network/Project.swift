import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project.makeModule(
    name: "Network",
    product: .staticFramework,
    dependencies: [
        .Project.Core.ThirdPartyLibManager
    ]
)
