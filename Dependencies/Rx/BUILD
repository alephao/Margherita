load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "RxSwift",
    srcs = glob(
        [
            "RxSwift/**/*.swift",
            "Platform/**/*.swift",
        ],
        exclude = ["RxSwift/Platform/**/*.swift"],
    ),
    module_name = "RxSwift",
    visibility = ["//visibility:public"],
)

swift_library(
    name = "RxRelay",
    srcs = glob([
        "RxRelay/**/*.swift",
        "RxRelay/**/*.h",
        "RxRelay/**/*.m",
    ]),
    module_name = "RxRelay",
    deps = [":RxSwift"],
)

# RxCocoa's Objective-C files
objc_library(
    name = "RxCocoaRuntime",
    srcs = glob(["RxCocoa/**/*.m"]),
    hdrs = glob(
        ["RxCocoa/**/*.h"],
        exclude = ["RxCocoa/RxCocoa.h"],
    ),
    module_name = "RxCocoaRuntime",
    visibility = ["//visibility:private"],
)

swift_library(
    name = "RxCocoa",
    srcs = glob(
        [
            "RxCocoa/**/*.swift",
            "Platform/**/*.swift",
        ],
        exclude = [
            "RxCocoa/Platform/**/*.swift",
            "Platform/AtomicInt.swift",
            "Platform/macOS/",
        ],
    ),
    defines = ["SWIFT_PACKAGE"],  # This is important, otherwise the library won't compile!
    module_name = "RxCocoa",
    visibility = ["//visibility:public"],
    deps = [
        ":RxCocoaRuntime",
        ":RxRelay",
        ":RxSwift",
    ],
)
