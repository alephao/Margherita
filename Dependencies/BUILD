load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

package(default_visibility = [
    "//Sources:__subpackages__",
])

# 0 deps

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

# 1 dep

swift_library(
    name = "RxRelay",
    srcs = glob([
        "RxSwift/RxRelay/**/*.swift",
        "RxSwift/RxRelay/**/*.h",
        "RxSwift/RxRelay/**/*.m",
    ]),
    module_name = "RxRelay",
    deps = [":RxSwift"],
)

# 2 deps

# RxCocoa's Objective-C files
objc_library(
    name = "RxCocoaRuntime",
    srcs = glob(["RxSwift/RxCocoa/**/*.m"]),
    hdrs = glob(
        ["RxSwift/RxCocoa/**/*.h"],
        exclude = ["RxSwift/RxCocoa/RxCocoa.h"],
    ),
    module_name = "RxCocoaRuntime",
    visibility = ["//visibility:private"],
)

swift_library(
    name = "RxCocoa",
    srcs = glob(
        [
            "RxSwift/RxCocoa/**/*.swift",
            "RxSwift/Platform/**/*.swift",
        ],
        exclude = [
            "RxSwift/RxCocoa/Platform/**/*.swift",
            "RxSwift/Platform/AtomicInt.swift",
            "RxSwift/Platform/macOS/",
        ],
    ),
    defines = ["SWIFT_PACKAGE"],  # This is important, otherwise the library won't compile!
    module_name = "RxCocoa",
    deps = [
        ":RxCocoaRuntime",
        ":RxRelay",
        ":RxSwift",
    ],
)
