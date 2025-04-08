Pod::Spec.new do |s|
  s.name             = 'LuckyBiteiOS'
  s.version          = '0.1.58'
  s.summary          = 'LuckyBite Service for iOS'
  s.description      = 'LuckyBite Service for iOS offerwall'
  s.homepage         = 'https://www.techlabs.co.kr'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Haedong Jeon' => 'goehd2538@techlabs.co.kr' }
  s.source           = { :git => 'https://github.com/thyadang-techlabs/LuckyBiteiOS-CocoaPod.git', :tag => s.version.to_s }
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  s.vendored_frameworks = "LuckyBiteiOS.xcframework"
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'ios-arm64 arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'ios-arm64 arm64' }
end
