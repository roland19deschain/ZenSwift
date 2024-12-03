// swift-tools-version: 5.10

import PackageDescription

let package = Package(
	name: "ZenSwift",
	platforms: [
		.iOS(.v14),
		.tvOS(.v14),
		.macOS(.v10_15),
		.watchOS(.v6)
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
