build:
	swift build

test:
	swift test -c release

fmt:
	swift format --in-place --recursive Sources Tests

sync:
	cp upstream/cities.json Sources/Cities/Resources/cities.json
