Pod::Spec.new do |s|

  s.name             = 'FUDUIKitLib'
  s.version          = '0.1.0'
  s.summary          = 'A short description of FUDUIKitLib.'
  s.description      = <<-DESC
Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/FX99/FUDUIKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'fudolan' => 'fudolan@163.com' }
  s.source           = { :git => 'https://github.com/FX99/FUDUIKit.git', :tag => s.version.to_s }

  s.frameworks = 'UIKit'
  s.ios.deployment_target = '9.0'
  s.ios.vendored_frameworks = 'Products/FUDUIKit.framework'
  s.resources = 'Products/FUDUIKit.framework/FUDUIKit.xcassets'

end