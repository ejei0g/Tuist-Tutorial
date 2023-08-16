import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project.makeModule(
    name: "MuzKitManager",
    platform: .iOS,
    product: .app,
    dependencies: [
        .Project.Feature.AlbumList,
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
