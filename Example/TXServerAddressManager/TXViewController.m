//
//  TXViewController.m
//  TXServerAddressManager
//
//  Created by 张雄 on 11/08/2019.
//  Copyright (c) 2019 张雄. All rights reserved.
//

#import "TXViewController.h"
#import "TXServerAddressManager.h"

@interface TXViewController ()

@end

@implementation TXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 服务器地址管理
    [TXServerAddressManager setServerAddressConfig:^(TXServerAddressConfig * _Nonnull serverAddressConfig) {
        serverAddressConfig.releaseServerAddressConfig.serverAddress = @"192.168.1.125";
        serverAddressConfig.releaseServerAddressConfig.serverPort = @"8080";
        serverAddressConfig.deBugServerAddressConfig.serverAddress = @"192.168.1.160";
        serverAddressConfig.deBugServerAddressConfig.serverPort = @"9000";
    }];
    
    // 设置Run类型
    [TXServerAddressManager setRunType:TXSARunTypeRelease];
    
    // 获取服务器地址
    NSLog(@"serverAddress:%@",[TXServerAddressManager serverAddress]);
    
    // 获取服务器端口
    NSLog(@"serverPort:%@",[TXServerAddressManager serverPort]);
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
