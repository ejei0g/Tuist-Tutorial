import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project.makeModule(
    name: "FeatureFanz",
    product: .staticFramework,
    dependencies: [
        .Project.Core.Network,
        .Project.Core.Authentication,
        .Project.UserInterface.DesignSystem,
    ],
    isTest: true
)
