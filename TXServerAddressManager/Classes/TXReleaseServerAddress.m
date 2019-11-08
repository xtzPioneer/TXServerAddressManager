//
//  TXReleaseServerAddress.m
//  TXServerAddressManager
//
//  Created by xtz_pioneer on 2019/10/31.
//  Copyright © 2019 xtz_pioneer. All rights reserved.
//

#import "TXReleaseServerAddress.h"

@implementation TXReleaseServerAddress

- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    TXReleaseServerAddress *releaseServerAddress = [[[self class] allocWithZone:zone] init];
    releaseServerAddress.serverAddress = self.serverAddress.copy;
    releaseServerAddress.serverPort = self.serverAddress.copy;
    return releaseServerAddress;
}

- (nonnull id)mutableCopyWithZone:(nullable NSZone *)zone {
    TXReleaseServerAddress *releaseServerAddress = [[[self class] allocWithZone:zone] init];
    releaseServerAddress.serverAddress = self.serverAddress.mutableCopy;
    releaseServerAddress.serverPort = self.serverAddress.mutableCopy;
    return releaseServerAddress;
}

@end
