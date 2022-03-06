// swift-tools-version:5.5

import PackageDescription

let package = Package(
	name: "ZenSwift",
	platforms: [
		.iOS(.v12),
		.tvOS(.v12),
		.macOS(.v10_10),
		.watchOS(.v2)
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
