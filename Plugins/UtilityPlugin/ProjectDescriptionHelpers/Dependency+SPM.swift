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
}

// MARK: - Repository

public extension Package { // Major.Minor.Patch
    static let Rx = Package.remote(url: "https://github.com/ReactiveX/RxSwift.git", requirement: .upToNextMajor(from: "6.5.0"))
}

// MARK: - SPM

public extension TargetDependency.SPM {
    static let RxSwift = TargetDependency.package(product: "RxSwift")
    static let RxCocoa = TargetDependency.package(product: "RxCocoa")
    static let RxRelay = TargetDependency.package(product: "RxRelay")
}

// MARK: - Tuist SPM

public extension TargetDependency.SPM {
    static let Alamofire = TargetDependency.external(name: "Alamofire")
    static let Kingfisher = TargetDependency.external(name: "Kingfisher")
    static let BitmovinPlayer = TargetDependency.external(name: "BitmovinPlayer")
}
