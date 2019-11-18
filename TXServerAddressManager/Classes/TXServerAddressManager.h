//
//  TXServerAddressManager.h
//  TXServerAddressManager
//
//  Created by xtz_pioneer on 2019/10/31.
//  Copyright © 2019 xtz_pioneer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TXServerAddressConfig.h"

NS_ASSUME_NONNULL_BEGIN

/** Run类型 */
typedef NS_ENUM(NSInteger,TXSARunType) {
    /** Release */
    TXSARunTypeRelease = 0,
    /** DeBug */
    TXSARunTypeDeBug   = 1,
};

/** 统一管理服务器地址.可设置Run类型,在Release、DeBug模式中快速切换服务器地址. */
@interface TXServerAddressManager : NSObject

/** 设置服务器地址配置 */
- (void)setServerAddressConfig:(void (^) (TXServerAddressConfig *serverAddressConfig))serverAddressConfig;

/** 设置服务器地址配置 */
+ (void)setServerAddressConfig:(void (^) (TXServerAddressConfig *serverAddressConfig))serverAddressConfig;

/** 设置Run类型 */
- (void)setRunType:(TXSARunType)runType;

/** 设置Run类型 */
+ (void)setRunType:(TXSARunType)runType;

/** 获取Run类型 */
- (TXSARunType)runType;

/** 获取Run类型 */
+ (TXSARunType)runType;

/** 获取服务器地址 */
- (NSString *)serverAddress;

/** 获取服务器地址 */
+ (NSString *)serverAddress;

/** 获取服务器端口 */
- (NSString *)serverPort;

/** 获取服务器端口 */
+ (NSString *)serverPort;

/** 快速创建服务器地址管理器 */
+ (instancetype)manager;

// 禁止使用下面方法创建对象
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)copy NS_UNAVAILABLE;
- (instancetype)mutableCopy NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
