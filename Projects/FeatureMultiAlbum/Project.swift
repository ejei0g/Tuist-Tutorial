import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "FeatureMultiAlbum",
    product: .staticFramework,
    dependencies: [
        .Project.Service,
        .Project.ServiceAudio
    ],
    isTest: true
)
