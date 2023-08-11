import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "FeatureVideoAlbum",
    product: .staticFramework,
    dependencies: [
        .Project.Service,
        .Project.ServiceAudio
    ],
    isTest: true
)
