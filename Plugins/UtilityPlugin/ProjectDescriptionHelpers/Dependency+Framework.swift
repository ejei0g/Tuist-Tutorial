import ProjectDescription

extension TargetDependency {
    public enum Framework { }
}

public extension TargetDependency.Framework {
    private static func framework(name: String) -> TargetDependency {
        .xcframework(path: .relativeToRoot("Frameworks/\(name).xcframework"))
    }

    static let FlexLayout = framework(name: "FlexLayout")
    static let PinLayout  = framework(name: "PinLayout")
}
