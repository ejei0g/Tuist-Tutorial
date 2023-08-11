import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "KiTPlayer",
    platform: .iOS,
    product: .app,
    dependencies: [
        .Project.Feature,
        .Project.FeatureMultiAlbum,
        .Project.FeatureVideoAlbum
    ],
    resources: ["Resources/**"],
    infoPlist: .extendingDefault(with: [
        "UIMainStoryboardFile": "",
        "UILaunchStoryboardName": "LaunchScreen",
        "ENABLE_TESTS": .boolean(true),
    ]),
    isTest: true
//    infoPlist: .file(path: "Support/Info.plist") // 파일 경로로 따로 관리 가능
)