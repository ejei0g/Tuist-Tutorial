//
//  Dependency+Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Jaeyoung Lee on 2023/08/10.
//
// https://baegteun.tistory.com/4

import ProjectDescription

extension TargetDependency {
    public enum Project { }
}

public extension TargetDependency.Project {
    static let Feature = TargetDependency.project(target: "FeatureLogin", path: .relativeToRoot("Projects/Feature"))
    static let FeatureMultiAlbum = TargetDependency.project(target: "FeatureMultiAlbum", path: .relativeToRoot("Projects/FeatureMultiAlbum"))
    static let FeatureVideoAlbum = TargetDependency.project(target: "FeatureVideoAlbum", path: .relativeToRoot("Projects/FeatureVideoAlbum"))

    static let Service = TargetDependency.project(target: "Utils", path: .relativeToRoot("Projects/Service"))
    static let ServiceAudio = TargetDependency.project(target: "Audio", path: .relativeToRoot("Projects/ServiceAudio"))
    static let ServiceAuthentication = TargetDependency.project(target: "Authentication", path: .relativeToRoot("Projects/ServiceAuthentication"))

    static let ThirdPartyLib = TargetDependency.project(target: "ThirdPartyLib", path: .relativeToRoot("Projects/ThirdPartyLib"))
}
