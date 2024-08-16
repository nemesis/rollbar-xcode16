import ProjectDescription

let project = Project(
    name: "rollbar-xcode16",
    targets: [
        .target(
            name: "rollbar-xcode16",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.rollbar-xcode16",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["rollbar-xcode16/Sources/**"],
            resources: ["rollbar-xcode16/Resources/**"],
            dependencies: [
              .external(name: "RollbarNotifier")
            ]
        ),
        .target(
            name: "rollbar-xcode16Tests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.rollbar-xcode16Tests",
            infoPlist: .default,
            sources: ["rollbar-xcode16/Tests/**"],
            resources: [],
            dependencies: [.target(name: "rollbar-xcode16")]
        ),
    ]
)
