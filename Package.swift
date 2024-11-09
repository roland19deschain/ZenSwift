// swift-tools-version:5.9

import PackageDescription

let package = Package(
	name: "ZenSwift",
	platforms: [
		.iOS(.v14),
		.tvOS(.v14),
		.macOS(.v10_13),
		.watchOS(.v4)
	],
	products: [
		.library(
			name: "ZenSwift",
			type: .static,
			targets: ["ZenSwift"]
		)
	],
	dependencies: [],
	targets: [
		.target(
			name: "ZenSwift",
			dependencies: [],
			path: "Sources/"
		),
		.testTarget(
			name: "ZenSwiftTests",
			dependencies: ["ZenSwift"],
			path: "Tests/"
		)
	],
	swiftLanguageVersions: [.v5]
)
