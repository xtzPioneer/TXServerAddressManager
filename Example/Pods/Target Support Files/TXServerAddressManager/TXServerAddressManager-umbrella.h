#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "TXDeBugServerAddress.h"
#import "TXReleaseServerAddress.h"
#import "TXServerAddressConfig.h"
#import "TXServerAddressManager.h"

FOUNDATION_EXPORT double TXServerAddressManagerVersionNumber;
FOUNDATION_EXPORT const unsigned char TXServerAddressManagerVersionString[];

