// swift-tools-version:5.3

import PackageDescription

let package = Package(
	name: "ZenSwift",
	platforms: [
		.macOS(.v10_10),
		.iOS(.v12),
		.tvOS(.v12),
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
			path: "ZenSwift/SourceCode/"
		)
	]
)
