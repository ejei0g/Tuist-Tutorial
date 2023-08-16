//
//  Dependency+Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Jaeyoung Lee on 2023/08/10.
//
// https://baegteun.tistory.com/4

import ProjectDescription

// https://github.com/minsOne/iOSApplicationTemplate.git
// 프로젝트를 구성하는 방식은 일단 대분류, 소분류가 특정 기능으로 묶어질 때, 아래를 참고해서 묶기
// 모듈 아키텍쳐로 개발할 때, 하나의 기능을 어떻게 개발할지는 구성원과의 합의를 통해 결정
// 예시: 하나의 피쳐 구성 방식(minsone)은 피쳐를 크게 domain, repository, UI 로 분리해서 각각의 프로젝트를 생성합니다.
// 각 피쳐 내부 프로젝트는 기본 구현된 도메인, 레포, UI를 의존하고, 피쳐의 세부사항을 구현하는 방식으로 개발방향을 정한 것 같습니다.

// Feature: Repository -> Domain -> UI

// FeatureKit (dynamic) -> Features/** (static)
// CoreKit (dynamic) -> Cores/** (static)
// UserInterfaceKit (dynamic) -> UserInterfaces/** (static)

extension TargetDependency {
    public struct Project {
        public struct App {}
        public struct Feature {}
        public struct Core {}
        public struct UserInterface {}
    }
}

public extension TargetDependency.Project {
    static let FeatureLogin = TargetDependency.project(target: "FeatureLogin", path: .relativeToRoot("Projects/Feature"))
    static let FeatureMultiAlbum = TargetDependency.project(target: "FeatureMultiAlbum", path: .relativeToRoot("Projects/FeatureMultiAlbum"))
    static let FeatureVideoAlbum = TargetDependency.project(target: "FeatureVideoAlbum", path: .relativeToRoot("Projects/FeatureVideoAlbum"))

    static let Service = TargetDependency.project(target: "Utils", path: .relativeToRoot("Projects/Service"))
    static let ServiceAudio = TargetDependency.project(target: "Audio", path: .relativeToRoot("Projects/ServiceAudio"))
    static let ServiceAuthentication = TargetDependency.project(target: "Authentication", path: .relativeToRoot("Projects/ServiceAuthentication"))

    static let ThirdPartyLib = TargetDependency.project(target: "ThirdPartyLib", path: .relativeToRoot("Projects/ThirdPartyLib"))
}

// MARK: - App

public extension TargetDependency.Project.App {
    static func project(name: String) -> TargetDependency {
        .project(
            target: name,
            path: .relativeToRoot("Projects/Apps/\(name)")
        )
    }

    static let KiTPlayer     = project(name: "KiTPlayer")
    static let MuzKitManager = project(name: "MuzKitManager")
}

// MARK: - Feature

public extension TargetDependency.Project.Feature {
    static func project(name: String) -> TargetDependency {
        .project(
            target: name,
            path: .relativeToRoot("Projects/Features/\(name)")
        )
    }

    static let Fanz      = project(name: "FeatureFanz")
    static let AlbumList = project(name: "FeatureAlbumList")
}

// MARK: - Core

public extension TargetDependency.Project.Core {
    static func project(name: String) -> TargetDependency {
        .project(
            target: name,
            path: .relativeToRoot("Projects/Cores/\(name)")
        )
    }

    static let MuzProcessor         = project(name: "MuzProcessor")
    static let Audio                = project(name: "Audio")
    static let Authentication       = project(name: "Authentication")
    static let Network              = project(name: "Network")
    static let ThirdPartyLibManager = project(name: "ThirdPartyLibManager")
}

// MARK: - User Interface

public extension TargetDependency.Project.UserInterface {
    static func project(name: String) -> TargetDependency {
        .project(
            target: name,
            path: .relativeToRoot("Projects/UserInterfaces/\(name)")
        )
    }

    static let DesignSystem = project(name: "DesignSystem")
}
