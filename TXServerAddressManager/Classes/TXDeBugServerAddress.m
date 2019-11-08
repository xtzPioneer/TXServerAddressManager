//
//  TXDeBugServerAddress.m
//  TXServerAddressManager
//
//  Created by xtz_pioneer on 2019/10/31.
//  Copyright © 2019 xtz_pioneer. All rights reserved.
//

#import "TXDeBugServerAddress.h"

@implementation TXDeBugServerAddress

- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    TXDeBugServerAddress *deBugServerAddress = [[[self class] allocWithZone:zone] init];
    deBugServerAddress.serverAddress = self.serverAddress.copy;
    deBugServerAddress.serverPort = self.serverAddress.copy;
    return deBugServerAddress;
}

- (nonnull id)mutableCopyWithZone:(nullable NSZone *)zone {
    TXDeBugServerAddress *deBugServerAddress = [[[self class] allocWithZone:zone] init];
    deBugServerAddress.serverAddress = self.serverAddress.mutableCopy;
    deBugServerAddress.serverPort = self.serverAddress.mutableCopy;
    return deBugServerAddress;
}

@end
