//
//  TXServerAddressManager.m
//  TXServerAddressManager
//
//  Created by xtz_pioneer on 2019/10/31.
//  Copyright © 2019 xtz_pioneer. All rights reserved.
//

#import "TXServerAddressManager.h"

@interface TXServerAddressManager ()

/** 服务器地址配置 */
@property (nonatomic,strong)TXServerAddressConfig *aServerAddressConfig;

/** Run类型 */
@property (nonatomic,assign)TXSARunType aRunType;

@end

@implementation TXServerAddressManager

+ (instancetype)manager {
    static TXServerAddressManager *managerInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        managerInstance = [[self alloc] init];
    });
    return managerInstance;
}

- (instancetype)init {
    if (self =  [super init]) {
        self.aServerAddressConfig = [TXServerAddressConfig config];
        self.aRunType = TXSARunTypeRelease;
    }
    return self;
}

- (void)setServerAddressConfig:(void (^) (TXServerAddressConfig *serverAddressConfig))serverAddressConfig {
    if (serverAddressConfig) serverAddressConfig (self.aServerAddressConfig);
}

+ (void)setServerAddressConfig:(void (^) (TXServerAddressConfig *serverAddressConfig))serverAddressConfig {
    [[self manager] setServerAddressConfig:serverAddressConfig];
}

- (void)setRunType:(TXSARunType)runType {
    self.aRunType = runType;
}

+ (void)setRunType:(TXSARunType)runType {
    [[self manager] setRunType:runType];
}

- (TXSARunType)runType {
    return self.aRunType;
}

+ (TXSARunType)runType {
    return [[self manager] runType];
}

- (NSString *)serverAddress {
    switch (self.aRunType) {
        case TXSARunTypeRelease: {
            return self.aServerAddressConfig.releaseServerAddressConfig.serverAddress;
        }
            break;
        case TXSARunTypeDeBug: {
            return self.aServerAddressConfig.deBugServerAddressConfig.serverAddress;
        }
            break;
        default:
            break;
    }
}

+ (NSString *)serverAddress {
    return [[self manager] serverAddress];
}

- (NSString *)serverPort {
    switch (self.aRunType) {
        case TXSARunTypeRelease: {
            return self.aServerAddressConfig.releaseServerAddressConfig.serverPort;
        }
            break;
        case TXSARunTypeDeBug: {
            return self.aServerAddressConfig.deBugServerAddressConfig.serverPort;
        }
            break;
        default:
            break;
    }
}

+ (NSString *)serverPort {
    return [[self manager] serverPort];
}

@end
