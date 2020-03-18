#
# Be sure to run `pod lib lint FUDUIKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FUDUIKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of FUDUIKit.'
  s.description      = <<-DESC
Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/FX99/FUDUIKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'fudolan' => 'fudolan@163.com' }
  s.source           = { :git => 'https://github.com/FX99/FUDUIKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'FUDUIKit/**/*.{h,m,mm,c,cpp}'
  s.resources = 'FUDUIKit/**/*.{plist,xcassets,bundle,xib}'
  
  # s.resource_bundles = {
  #   'FUDUIKit' => ['FUDUIKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
