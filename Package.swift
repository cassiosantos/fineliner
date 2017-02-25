import PackageDescription

let package = Package(
    name: "fineliner",
    targets: [
        Target(name: "Executable", dependencies: ["Fineliner"]),
    ],
    dependencies: [
        .Package(url: "https://github.com/apple/example-package-fisheryates.git", majorVersion: 2),
    ]
)
