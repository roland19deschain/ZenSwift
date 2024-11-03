// swift-tools-version:6.0

import PackageDescription

let package = Package(
	name: "ZenSwift",
	platforms: [
		.iOS(.v12),
		.tvOS(.v12),
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
	swiftLanguageModes: [.v6]
)
