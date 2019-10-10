load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")

swift_library(
    name = "Login",
    srcs = glob(["Login/*.swift"]),
    module_name = "Login",
    deps = [
        "@Rx//:RxCocoa",
        "@Rx//:RxSwift",
        "@SnapKit",
    ],
)

swift_library(
    name = "Margherita",
    srcs = glob(["Margherita/*.swift"]),
    module_name = "Margherita",
    deps = [":Login"],
)

ios_application(
    name = "App",
    app_icons = ["//Resources:AppIcon.xcassets"],
    bundle_id = "com.alephao.Margherita",
    families = [
        "iphone",
    ],
    infoplists = [":Info.plist"],
    launch_storyboard = "//Resources:LaunchScreen.storyboard",
    minimum_os_version = "10.0",
    deps = [":Margherita"],
)
