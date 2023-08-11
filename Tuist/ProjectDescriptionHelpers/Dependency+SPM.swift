//
//  Dependency+SPM.swift
//  ProjectDescriptionHelpers
//
//  Created by Jaeyoung Lee on 2023/08/10.
//
// https://baegteun.tistory.com/4

import ProjectDescription

extension TargetDependency {
    public enum SPM { }
    public enum TuistSPM { }
}

// MARK: - Repository

public extension Package { // Major.Minor.Patch
    static let Rx = Package.remote(url: "https://github.com/ReactiveX/RxSwift.git", requirement: .upToNextMajor(from: "6.5.0"))
    static let Alamofire = Package.remote(url: "https://github.com/Alamofire/Alamofire", requirement: .exact("4.9.1"))
    static let Kingfisher = Package.remote(url: "https://github.com/onevcat/Kingfisher", requirement: .upToNextMajor(from: "7.0.0"))
    static let BitmovinPlayer = Package.remote(url: "https://github.com/bitmovin/player-ios", requirement: .exact("3.27.0"))
}

// MARK: - SPM

public extension TargetDependency.SPM {
    static let RxSwift = TargetDependency.package(product: "RxSwift")
    static let RxCocoa = TargetDependency.package(product: "RxCocoa")
    static let RxRelay = TargetDependency.package(product: "RxRelay")
}

// MARK: - Tuist SPM

public extension TargetDependency.TuistSPM {
    static let Alamofire = TargetDependency.external(name: "Alamofire")
    static let Kingfisher = TargetDependency.external(name: "Kingfisher")
    static let BitmovinPlayer = TargetDependency.external(name: "BitmovinPlayer")
}
