// swift-tools-version: 6.0
@preconcurrency import PackageDescription

let package = Package(
  name: "rollbar-xcode16",
  dependencies: [
    .package(url: "https://github.com/rollbar/rollbar-apple.git", exact: "3.3.1")
  ]
)
