//
//  ObjcController.m
//  FWSwiftBridgeDemo
//
//  Created by wuyong on 2020/8/10.
//  Copyright © 2020 site.wuyong. All rights reserved.
//

#import "ObjcController.h"
#import "SwiftHeader.h"
#import <WXApi.h>
#import <AlipaySDK/AlipaySDK.h>
#import <UPPaymentControl/UPPaymentControl.h>

@interface ObjcController () <WXApiDelegate>

@end

@implementation ObjcController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"ObjcController";
    self.view.backgroundColor = [UIColor systemBackgroundColor];
    
    [WXApi registerApp:@"" universalLink:@""];
    [AlipaySDK defaultService];
    [UPPaymentControl defaultControl];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Swift" style:UIBarButtonItemStylePlain target:self action:@selector(onSwift)];
}

- (void)onSwift {
    [self.navigationController pushViewController:[ViewController new] animated:YES];
}

@end
