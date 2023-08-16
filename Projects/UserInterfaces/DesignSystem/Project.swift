import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project.makeModule(
    name: "DesignSystem",
    product: .framework,
    dependencies: [
        .Framework.FlexLayout,
        .Framework.PinLayout,
    ],
    resources: ["Resources/**"]
)
