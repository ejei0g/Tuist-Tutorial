import ProjectDescription
import ProjectDescriptionHelpers

// https://baegteun.tistory.com/3
// https://okanghoon.medium.com/tuist-로-외부-의존성-관리하기-85609e70133c

/**
 Do not embed:  Static framework & library
 Embed:         Dynamic (Shared) Library
 */

/**
 1. Xcode SPM
 2. Tuist SPM
 3. Tuist Carthago
 4. Framework(xcframework)
 */

let dependencis = Dependencies(
    carthage: [],
    swiftPackageManager: .init( // 디테일한 속성 컨트롤
        [
            .BitmovinPlayer,
            .Alamofire,
            .Kingfisher
        ],
        // 기본적으로 Tuist SPM은 static framework로 생성, 특정 라이브러리를 동적으로 만들기 위해서는 아래 설정에서 컨트롤
        productTypes: [
            "Alamofire": .framework,
//            "Kingfisher": .staticFramework, // Default static
//            "BitmovinPlayer": .framework
        ],
        baseSettings: .settings(),
        targetSettings: [:],
        projectOptions: [:]
    ),
    platforms: [.iOS]
)

    // 일반적인 방법
//    swiftPackageManager: [
//        .remote(
//            url: "https://github.com/Alamofire/Alamofire",
//            requirement: .exact("4.9.1")
//        ),
//        .remote(
//            url: "https://github.com/onevcat/Kingfisher",
//            requirement: .upToNextMajor(from: "7.0.0")
//        ),
//        .remote(
//            url: "https://github.com/bitmovin/player-ios",
//            requirement: .exact("3.27.0")
//        )
//    ],
