Pod::Spec.new do |spec|
  spec.name             = 'ZenSwift'
  spec.version          = '2.1.14'
  spec.swift_version    = '5.10'
  spec.summary          = 'ZenSwift is a collection of components and Swift stdlib extensions.'
  spec.description      = <<-DESC
ZenSwift is a collection of components and extensions of Swift standard library.
                       DESC
  spec.homepage         = 'https://github.com/roland19deschain/ZenSwift'
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.author           = { 'Alexey Roik' => 'roland19deschain@gmail.com' }
  spec.source           = { :git => 'https://github.com/roland19deschain/ZenSwift.git', :tag => spec.version }
  spec.requires_arc     = true
  spec.ios.deployment_target = '14.0'
  spec.osx.deployment_target = '10.15'
  spec.tvos.deployment_target = '14.0'
  spec.watchos.deployment_target = '6.0'
  spec.source_files     = 'Sources/**/*{swift}'
end
