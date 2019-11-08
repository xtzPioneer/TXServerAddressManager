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

/** 服务器地址管理器 */
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

/** 服务器地址 */
@property (nonatomic,copy,readonly)NSString *serverAddress;

/** 服务器端口 */
@property (nonatomic,copy,readonly)NSString *serverPort;

/** 快速创建服务器地址管理器 */
+ (instancetype)manager;

// 禁止使用下面方法创建对象
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)copy NS_UNAVAILABLE;
- (instancetype)mutableCopy NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
