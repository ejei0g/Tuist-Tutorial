import ProjectDescription

let nameAttribute: Template.Attribute = .required("name")
let platformAttribute: Template.Attribute = .optional("platform", default: "ios")

let template = Template(
    description: "Framework Template",
    attributes: [
        nameAttribute,
        platformAttribute
    ],
    items: [
        // MARK: - Project.swift
        .file(
            path: "\(nameAttribute)/Project.swift",
            templatePath: "contents_project.stencil"
        ),
        // MARK: - Sources
        .string(
            path: "\(nameAttribute)/Sources/\(nameAttribute).swift",
            contents: "// \(nameAttribute).swift\nimport Foundation"
        ),
        // MARK: - Tests
        .file(
            path: "\(nameAttribute)/Tests/\(nameAttribute)Tests.swift",
            templatePath: "contents_tests_xctest.stencil"
        ),
    ]
)
