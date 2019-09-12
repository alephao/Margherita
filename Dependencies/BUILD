load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

package(default_visibility = [
    "//Sources:__subpackages__",
])

swift_library(
    name = "RxSwift",
    srcs = glob(
        [
            "RxSwift/RxSwift/**/*.swift",
            "RxSwift/Platform/**/*.swift",
        ],
        exclude = ["RxSwift/RxSwift/Platform/**/*.swift"],
    ),
    module_name = "RxSwift",
)
