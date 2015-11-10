//
//  ViewController.m
//  LCProgressHUDemo
//
//  Created by 刘超 on 15/4/14.
//  Copyright (c) 2015年 Leo. All rights reserved.
//

#import "ViewController.h"
#import "LCProgressHUD.h"

#define TIME 2.0f

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)showText {
    
    [LCProgressHUD showMessage:@"心有林夕"];
    
    [NSTimer scheduledTimerWithTimeInterval:TIME
                                     target:self
                                   selector:@selector(hideHUD)
                                   userInfo:nil
                                    repeats:NO];
}

- (IBAction)showSuccess {
    
    [LCProgressHUD showSuccess:@"加载成功"];
}

- (IBAction)showError {
    
    [LCProgressHUD showFailure:@"加载失败"];
}

- (IBAction)showWaitting {
    
    [LCProgressHUD showLoading:@"正在加载"];
    
    [NSTimer scheduledTimerWithTimeInterval:TIME
                                     target:self
                                   selector:@selector(showSuccess)
                                   userInfo:nil
                                    repeats:NO];
}

- (IBAction)showWaittingWithoutText {
    
    [LCProgressHUD showInfoMsg:@"请输入账号"];
}

- (void)hideHUD {
    
    [LCProgressHUD hide];
}

@end
