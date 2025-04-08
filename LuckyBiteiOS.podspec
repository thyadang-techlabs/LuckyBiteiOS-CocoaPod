Pod::Spec.new do |s|
  s.name             = 'LuckyBiteiOS'
  s.version          = '0.1.71'
  s.summary          = 'LuckyBite Service for iOS'
  s.description      = 'LuckyBite Service for iOS offerwall'
  s.homepage         = 'https://www.techlabs.co.kr'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Haedong Jeon' => 'goehd2538@techlabs.co.kr' }
  s.source           = { :git => 'https://github.com/thyadang-techlabs/LuckyBiteiOS-CocoaPod.git', :tag => s.version.to_s }
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  s.vendored_frameworks = "LuckyBiteiOS.xcframework"
  s.dependency 'BidmadSDK', '6.12.0'
  s.dependency 'OpenBiddingHelper', '6.12.0'
  s.dependency 'BidmadAdFitAdapter', '3.12.7.11.0'
  s.dependency 'BidmadAdmixerAdapter', '2.0.0.11.0'
  s.dependency 'BidmadAppLovinAdapter', '13.0.0.11.0'
  s.dependency 'BidmadFyberAdapter', '8.3.2.11.0'
  s.dependency 'BidmadGoogleAdManagerAdapter', '11.10.0.11.0'
  s.dependency 'BidmadGoogleAdMobAdapter', '11.10.0.11.0'
  s.dependency 'BidmadMobwithAdapter', '1.0.0.11.0'
  s.dependency 'BidmadORTBAdapter', '1.0.0.11.0'
  s.dependency 'BidmadPangleAdapter', '6.2.0.7.11.0'
  s.dependency 'BidmadPubmaticAdapter', '3.2.0.11.0'
  s.dependency 'BidmadTaboolaAdapter', '3.8.33.11.0'
  s.dependency 'BidmadTeadsAdapter', '5.2.0.11.0'
  s.dependency 'BidmadUnityAdsAdapter', '4.12.3.11.0'
  s.dependency 'BidmadVungleAdapter', '7.4.1.11.0'
  s.dependency 'BidmadPartners/AdMobBidding', '1.0.6'
end
