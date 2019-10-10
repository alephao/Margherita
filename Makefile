# Builds the whole app
.PHONY: build
build:
	bazel build //Sources:App

.PHONY: format
format:
	@mint run swiftformat swiftformat .