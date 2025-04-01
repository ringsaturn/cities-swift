build:
	swift build

test:
	swift test -c release

fmt:
	swift format --in-place --recursive Sources Tests

sync:
	git submodule update
	cp upstream/cities.json Sources/Cities/Resources/cities.json
