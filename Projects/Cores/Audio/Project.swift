import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project.makeModule(
    name: "Audio",
    product: .staticFramework,
    dependencies: [
        .Project.Core.ThirdPartyLibManager
    ]
)
