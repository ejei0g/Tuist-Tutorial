import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "FeatureLogin",
    product: .staticFramework,
    dependencies: [
        .Project.Service,
        .Project.ServiceAuthentication
    ],
    resources: ["Resources/**"],
    isTest: true
)
