#import "WebViewFlutterCustomPlugin.h"
#import "FLTCookieManager.h"
#import "FlutterWebView.h"

@implementation FLTWebViewFlutterCustomPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FLTWebViewFactory* webviewFactory = [[FLTWebViewFactory alloc] initWithRegistrar:registrar];
  [registrar registerViewFactory:webviewFactory withId:@"plugins.flutter.io/webview"];
  [FLTCookieManager registerWithRegistrar:registrar];
}

@end
