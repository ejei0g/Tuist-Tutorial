import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Audio",
    product: .staticFramework,
    dependencies: [
        .Project.ThirdPartyLib
    ]
)
