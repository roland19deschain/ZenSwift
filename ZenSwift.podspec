Pod::Spec.new do |s|
  s.name             = 'ZenSwift'
  s.version          = '0.1.19'
  s.swift_version    = '4.0'
  s.summary          = 'ZenSwift is a collection of components and Swift stdlib extensions.'
  s.description      = <<-DESC
ZenSwift is a collection of components and extensions of Swift standard library.
                       DESC
  s.homepage         = 'https://github.com/roland19deschain/ZenSwift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Alexey Roik' => 'roland19deschain@gmail.com' }
  s.source           = { :git => 'https://github.com/roland19deschain/ZenSwift.git', :tag => s.version }
  s.requires_arc     = true
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'
  s.source_files     = 'ZenSwift/**/*{swift}'
end
