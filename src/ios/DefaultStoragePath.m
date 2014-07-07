#import "DefaultStoragePath.h"

@implementation DefaultStoragePath

- (void) getDefaultStoragePath:(CDVInvokedUrlCommand*)command
{
    NSString* tmpPath = [NSTemporaryDirectory()stringByStandardizingPath];
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:tmpPath];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];    
}

@end

