import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project.makeModule(
    name: "ThirdPartyLibManager",
    product: .framework,
    dependencies: [
        .SPM.Alamofire,
        .SPM.Kingfisher,
        .SPM.BitmovinPlayer,
    ]
)
