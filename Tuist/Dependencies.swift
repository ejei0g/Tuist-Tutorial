import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

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
    swiftPackageManager: [
        .remote(url: "https://github.com/Alamofire/Alamofire", requirement: .exact("4.9.1")),
        .remote(url: "https://github.com/onevcat/Kingfisher", requirement: .upToNextMajor(from: "7.0.0")),
        .remote(url: "https://github.com/bitmovin/player-ios", requirement: .exact("3.27.0"))
    ],
    platforms: [.iOS]
)
