import ProjectDescription
import ProjectDescriptionHelpers

// https://baegteun.tistory.com/3

let project = Project.makeModule(
    name: "ThirdPartyLib",
    product: .framework,
    packages: [
        .Rx
    ],
    dependencies: [
        .SPM.RxCocoa,
        .SPM.RxSwift,
        .SPM.RxRelay,
        .TuistSPM.Alamofire,
        .TuistSPM.BitmovinPlayer,
        .TuistSPM.Kingfisher
    ]
)
