//
//  ObjcController.m
//  FWSwiftBridgeDemo
//
//  Created by wuyong on 2020/8/10.
//  Copyright © 2020 site.wuyong. All rights reserved.
//

#import "ObjcController.h"
#import <WXApi.h>
#import <AlipaySDK/AlipaySDK.h>

@interface ObjcController () <WXApiDelegate>

@end

@implementation ObjcController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"ObjcController";
    
    [WXApi registerApp:@"" universalLink:@""];
    [AlipaySDK defaultService];
}

@end
