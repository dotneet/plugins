#import "WebViewFlutterCustomPlugin.h"
#import "FLTCCookieManager.h"
#import "FlutterWebView.h"

@implementation FLTCWebViewFlutterCustomPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FLTCWebViewFactory* webviewFactory = [[FLTCWebViewFactory alloc] initWithRegistrar:registrar];
  [registrar registerViewFactory:webviewFactory withId:@"plugins.flutter.io/webview_custom"];
  [FLTCCookieManager registerWithRegistrar:registrar];
}

@end
