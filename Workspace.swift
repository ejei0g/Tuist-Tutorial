//
//  Workspace.swift
//  ProjectDescriptionHelpers
//
//  Created by Jaeyoung Lee on 2023/08/09.
//

import ProjectDescription

// https://baegteun.tistory.com/2#모듈-구조-만들기

// TODO: Workspace + ENV = APP1, APP2, APP3 Workspace

let workspace = Workspace(
    name: "Application",
    projects: [
        "Projects/Apps/**"
    ]
)
