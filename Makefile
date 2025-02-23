build:
	swift build

test:
	swift test -c release

bench:
	swift package benchmark --target TimezoneFinderBenchmarks

fmt:
	swift format --in-place --recursive Sources Tests Examples Benchmarks

sync:
	cp upstream/cities.json Sources/Cities/Resources/cities.json
