//
//  TXServerAddressConfig.m
//  TXServerAddressManager
//
//  Created by xtz_pioneer on 2019/10/31.
//  Copyright © 2019 xtz_pioneer. All rights reserved.
//

#import "TXServerAddressConfig.h"

@implementation TXServerAddressConfig

+ (instancetype)config {
    return [[self alloc] init];
}

- (instancetype)init {
    if (self =  [super init]) {
        self.releaseServerAddressConfig = [TXReleaseServerAddress new];
        self.deBugServerAddressConfig = [TXDeBugServerAddress new];
    }
    return self;
}

- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    TXServerAddressConfig *serverAddressConfig = [[[self class] allocWithZone:zone] init];
    serverAddressConfig.releaseServerAddressConfig = self.releaseServerAddressConfig.copy;
    serverAddressConfig.deBugServerAddressConfig = self.deBugServerAddressConfig.copy;
    return serverAddressConfig;
}

- (nonnull id)mutableCopyWithZone:(nullable NSZone *)zone {
    TXServerAddressConfig *serverAddressConfig = [[[self class] allocWithZone:zone] init];
    serverAddressConfig.releaseServerAddressConfig = self.releaseServerAddressConfig.mutableCopy;
    serverAddressConfig.deBugServerAddressConfig = self.deBugServerAddressConfig.mutableCopy;
    return serverAddressConfig;
}

@end
