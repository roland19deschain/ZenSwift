// swift-tools-version:5.3

import PackageDescription

let package = Package(
	name: "ZenSwift",
	platforms: [
		.macOS(.v10_10),
		.iOS(.v9),
		.tvOS(.v9),
		.watchOS(.v2)
	],
	products: [
		.library(name: "ZenSwift", targets: ["ZenSwift"])
	],
	dependencies: [],
	targets: [
		.target(name: "ZenSwift", dependencies: [])
	]
)
