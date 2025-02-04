## 설치 방법
### xcframework를 직접 설치할 경우
① **LuckyBiteiOS.xcframework**를 프로젝트에 넣습니다.     
② TARGETS에서 SDK를 사용할 대상 앱을 찾습니다.     
③ **General**의 **Frameworks, Libraries, and Embedded Content** 영역에서 **LuckyBiteiOS.xcframework**를 찾습니다.    
④ **Embed**의 값을 **'Embed & Sign'** 으로 설정합니다.
![설치 단계 설명 이미지](https://i.imgur.com/29sw6PC.png)    
### cocoapod을 이용해 설치할 경우
① 프로젝트의 Podfile에 `pod 'LuckyBiteiOS'`를 추가.       
② 프로젝트의 Podfile에 아래 로직을 적용.    
```ruby
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      if target.name == "LuckyBiteiOS"
        config.build_settings['CODE_SIGNING_ALLOWED'] = 'YES'
        config.build_settings['CODE_SIGNING_REQUIRED'] = 'YES'
        config.build_settings['ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES'] = 'YES'
      end
    end
  end
end
```

## 진입점 플로팅 버튼 적용 방법
### SwiftUI 프로젝트
```swift
import LuckyBiteiOS
...
TargetView()
  .overlay(alignment: .bottomTrailing) {
    LuckyBiteFloatingButton()
}
...
```
타겟 뷰의 **overlay**로 **`LuckyBiteFloatingButton()`** 를 지정합니다.
### UIKit 프로젝트
```swift
import LuckyBiteiOS
...
 override func viewDidAppear(_ animated: Bool) {
        LuckyBiteSDK().setFloatingButton(viewController: self, show: true)
    }
...
```
**`viewDidAppear` 함수**에서 **`LuckyBiteSDK().setFloatingButton(...)`** 함수를 호출합니다.      
      
`setFloatingButton` 함수 인자    
- viewController: 플로팅 버튼을 띄울 화면의 UIViewController를 전달하면 됩니다.
- show: 플로팅 버튼을 띄우고 싶다면 true, 가리고 싶다면 false를 전달하면 됩니다.
### Obj-C 프로젝트
```objc
#import "LuckyBiteiOS/LuckyBiteiOS.h"
...
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    LuckyBiteSDK *sdk = [LuckyBiteSDK shared];
    [sdk setFloatingButtonWithViewController:self show:YES];
}
...
```
**`viewDidAppear` 함수**에서 **`setFloatingButtonWithViewController`** 함수를 호출합니다.    
    
`setFloatingButtonWithViewController` 함수 인자    
- 첫 인자: self (UIViewController)
- show: 플로팅 버튼을 띄우고 싶다면 true, 가리고 싶다면 false를 전달하면 됩니다.

