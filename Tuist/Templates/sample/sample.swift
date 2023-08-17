// https://docs.tuist.io/commands/scaffold/
// https://baegteun.tistory.com/12
// 공식 템플릿 위치: ~/.tuist/Versions/3.21.1/Templates/default/default.swift

// tuist template 생성 구조
// Tuist/name_of_template/name_of_template.swift

import ProjectDescription

// scaffold를 실행할 때, 함께 추가할 수 있는 속성의 이름
let nameAttribute: Template.Attribute = .required("name")
let platformAttribute: Template.Attribute = .optional("platform", default: "ios")

// tuist scaffold name_of_template --name Name --platform macos

let template = Template(
    // tuist scaffold list 시 출력되는 description
    description: "Sample Test Template",
    // command 실행시 입력받은 속성값들
    attributes: [
        nameAttribute,
        platformAttribute
    ],
    // 아래 item을 기준으로 모듈이 생성
    items: [
        .string( // 파일명(path포함)에 컨텐츠를 생성
            path: "Source.swift",
            contents: "// My template contents of name \(nameAttribute)"
        ),
        .file( // stencil 파일 내부의 포맷을 사용해서 생성
            path: "Project.swift",
            templatePath: "project.stencil"
        ),
        .directory( // sourcePath의 디렉토리 내용물 전체를 path에 복사
            path: "destination",
            sourcePath: "source"
        ),
    ]
)
