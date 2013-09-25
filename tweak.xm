#import <UIKit/UIKit.h>
// #import <WebKit/WebView.h>

@interface WebView
+ (void)_setWebGLEnabled:(BOOL)enabled;
@end

%hook WebView
- (id)initWithCoder:(NSDictionary *) arguments
{
    id webview = %orig;
    [webview _setWebGLEnabled:YES];
    return webview;
}

- (id)initWithFrame:(CGRect)f frameName:(NSString *)frameName groupName:(NSString *)groupName {
    id webview = %orig;
    [webview _setWebGLEnabled:YES];
    return webview;
}
%end
