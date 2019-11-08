//
//  TXReleaseServerAddress.h
//  TXServerAddressManager
//
//  Created by xtz_pioneer on 2019/10/31.
//  Copyright © 2019 xtz_pioneer. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/** Release服务地址 */
@interface TXReleaseServerAddress : NSObject <NSCopying,NSMutableCopying>

/** 服务器地址 */
@property (nonatomic,strong)NSString *serverAddress;

/** 服务器端口 */
@property (nonatomic,strong)NSString *serverPort;

@end

NS_ASSUME_NONNULL_END
