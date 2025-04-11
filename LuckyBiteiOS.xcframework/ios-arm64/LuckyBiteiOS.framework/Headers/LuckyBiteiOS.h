//
//  LuckyBiteiOS.h
//  LuckyBiteiOS
//
//  Created by 전해동 on 2/3/25.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

//! Project version number for LuckyBiteiOS.
FOUNDATION_EXPORT double LuckyBiteiOSVersionNumber;

//! Project version string for LuckyBiteiOS.
FOUNDATION_EXPORT const unsigned char LuckyBiteiOSVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <LuckyBiteiOS/PublicHeader.h>

// Public API declarations
NS_ASSUME_NONNULL_BEGIN

@interface FloatingButtonManager : NSObject
+ (instancetype)shared;
- (void)showFloatingButtonOnViewController:(UIViewController *)viewController;
- (void)hideFloatingButton;
- (void)showWebViewWithURL:(NSString *)url onViewController:(UIViewController *)viewController;
@end

@interface FullScreenWebViewController : UIViewController <WKNavigationDelegate, WKScriptMessageHandler>
@property (nonatomic, strong) WKWebView *webView;
@end

NS_ASSUME_NONNULL_END
