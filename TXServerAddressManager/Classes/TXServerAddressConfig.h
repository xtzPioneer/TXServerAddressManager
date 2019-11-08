//
//  TXServerAddressConfig.h
//  TXServerAddressManager
//
//  Created by xtz_pioneer on 2019/10/31.
//  Copyright © 2019 xtz_pioneer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TXDeBugServerAddress.h"
#import "TXReleaseServerAddress.h"

NS_ASSUME_NONNULL_BEGIN

/** 服务器地址配置 */
@interface TXServerAddressConfig : NSObject <NSCopying,NSMutableCopying>

/** Release服务地址配置 */
@property (nonatomic,strong)TXReleaseServerAddress *releaseServerAddressConfig;

/** DeBug服务地址配置 */
@property (nonatomic,strong)TXDeBugServerAddress *deBugServerAddressConfig;

/** 快速创建服务器地址配置 */
+ (instancetype)config;

// 禁止使用下面方法创建对象
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
