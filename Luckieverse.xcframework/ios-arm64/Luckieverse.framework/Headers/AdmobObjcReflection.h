//
//  AdmobObjcReflection.h
//  Luckieverse
//
//  Created by 전해동 on 11/6/25.
//

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdmobObjcReflection : NSObject

+ (void)callAdmobRegisterWithWebView:(WKWebView*) webView;

@end

NS_ASSUME_NONNULL_END
