//
//  ViewController.m
//  LCProgressHUDemo
//
//  Created by 刘超 on 15/4/14.
//  Copyright (c) 2015年 Leo. All rights reserved.
//

#import "ViewController.h"
#import "LCProgressHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)showSuccess {
    
    [LCProgressHUD showStatus:LCProgressHUDStatusSuccess text:@"加载成功"];
}

- (IBAction)showError {
    
    [LCProgressHUD showStatus:LCProgressHUDStatusError text:@"加载失败"];
}

- (IBAction)showWaitting {
    
    [LCProgressHUD showStatus:LCProgressHUDStatusWaitting text:@"正在加载"];
    
    [NSTimer scheduledTimerWithTimeInterval:3.0f
                                     target:self
                                   selector:@selector(hideHUD)
                                   userInfo:nil
                                    repeats:NO];
}

- (IBAction)showWaittingWithoutText {
    
    [LCProgressHUD showStatus:LCProgressHUDStatusWaitting text:nil];
    
    [NSTimer scheduledTimerWithTimeInterval:3.0f
                                     target:self
                                   selector:@selector(hideHUD)
                                   userInfo:nil
                                    repeats:NO];
}

- (void)hideHUD {
    
    [LCProgressHUD hide:YES keep:NO];
}

@end
