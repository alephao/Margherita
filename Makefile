# Builds the whole app
.PHONY: build
build:
	bazel build //Sources:App --apple_platform_type=ios

.PHONY: format
format:
	@mint run swiftformat swiftformat .
