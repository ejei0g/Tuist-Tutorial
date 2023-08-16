import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project.makeModule(
    name: "FeatureAlbumList",
    product: .staticFramework,
    dependencies: [
        .Project.Core.Audio,
        .Project.Core.MuzProcessor,
        .Project.Core.Network,
        .Project.UserInterface.DesignSystem,
    ],
    isTest: true
)
