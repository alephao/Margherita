load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "build_bazel_rules_swift",
    sha256 = "ef2578a50a4dae1debb42a41699a8a77d3f31814c097be8d594f7f4d7f9fce14",
    urls = [
        "https://github.com/bazelbuild/rules_swift/releases/download/0.13.0/rules_swift.0.13.0.tar.gz",
    ],
)

http_archive(
    name = "build_bazel_rules_apple",
    sha256 = "a045a436b642c70fb0c10ca84ff0fd2dcbd59cc89100d597a61e8374afafb366",
    urls = [
        "https://github.com/bazelbuild/rules_apple/releases/download/0.18.0/rules_apple.0.18.0.tar.gz",
    ],
)

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)

swift_rules_dependencies()

load(
    "@build_bazel_rules_apple//apple:repositories.bzl",
    "apple_rules_dependencies",
)

apple_rules_dependencies()

load(
    "@build_bazel_apple_support//lib:repositories.bzl",
    "apple_support_dependencies",
)

apple_support_dependencies()

load(
    "@com_google_protobuf//:protobuf_deps.bzl",
    "protobuf_deps",
)

protobuf_deps()

# Libraries

# RxSwift
http_archive(
    name = "Rx",
    build_file = "//Dependencies/Rx:BUILD",
    sha256 = "f3e7d7544369d7834ddb02e625ee59a1e909a744fe9dd742d5c95b551f106f6f",
    strip_prefix = "RxSwift-5.0.1",
    url = "https://github.com/ReactiveX/RxSwift/archive/5.0.1.tar.gz",
)

# SnapKit
http_archive(
    name = "SnapKit",
    build_file = "//Dependencies/SnapKit:BUILD",
    sha256 = "1d4b8cd2fed43c596c7cf8918ef59e0fc939e0e43d093ccd80aa63a2757500d4",
    strip_prefix = "SnapKit-5.0.1",
    url = "https://github.com/SnapKit/SnapKit/archive/5.0.1.tar.gz",
)
