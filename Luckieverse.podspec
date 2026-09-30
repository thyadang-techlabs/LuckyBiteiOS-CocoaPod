Pod::Spec.new do |s|
  s.name             = 'Luckieverse'
  s.version          = '2.9.0'
  s.summary          = 'Luckieverse Service for iOS'
  s.description      = 'Luckieverse Service for iOS offerwall'
  s.homepage         = 'https://www.techlabs.co.kr'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Haedong Jeon' => 'goehd2538@techlabs.co.kr' }
  s.source           = { :git => 'https://github.com/thyadang-techlabs/LuckyBiteiOS-CocoaPod.git', :tag => s.version.to_s }
  s.ios.deployment_target = '15.0'
  s.swift_version = '5.0'
  s.vendored_frameworks = "Luckieverse.xcframework"
  s.pod_target_xcconfig = {
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64',
    'VALID_ARCHS[sdk=iphoneos*]' => 'arm64'
  }
  s.dependency "BidmadSDK", "7.0.1"
  s.dependency "OpenBiddingHelper", "7.0.1"
  s.dependency "BidmadGoogleGDPRAdapter", "7.0.1"
end
