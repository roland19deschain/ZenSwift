#import <Foundation/Foundation.h>
#import "TargetConditionals.h"

#if TARGET_OS_IPHONE
#import <UIKit/UIKit.h>
#elif TARGET_OS_MAC
#import <Cocoa/Cocoa.h>
#elif TARGET_OS_WATCH
#import <WatchKit/WatchKit.h>
#endif

FOUNDATION_EXPORT double ZenSwiftVersionNumber;
FOUNDATION_EXPORT const unsigned char ZenSwiftVersionString[];
