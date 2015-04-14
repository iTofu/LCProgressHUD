//
//  MBProgressHUD+LC.m
//  MBProgressHUDDemo
//
//  Created by 刘超 on 15/4/14.
//  Copyright (c) 2015年 Leo. All rights reserved.
//

#import "LCProgressHUD.h"

@implementation LCProgressHUD

+ (instancetype)sharedHUD {
    
    static LCProgressHUD *hud;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        hud = [[LCProgressHUD alloc] initWithWindow:[UIApplication sharedApplication].keyWindow];
    });
    return hud;
}

+ (void)showStatus:(LCProgressHUDStatus)status text:(NSString *)text {
    
    LCProgressHUD *hud = [LCProgressHUD sharedHUD];
    [[UIApplication sharedApplication].keyWindow addSubview:hud];
    [hud show:YES];
    hud.removeFromSuperViewOnHide = YES;
    hud.labelText = text;
    hud.labelFont = [UIFont systemFontOfSize:14.0f];
    hud.minSize = CGSizeMake(120.0f, 120.0f);
    switch (status) {
        case LCProgressHUDStatusSuccess: {
            hud.mode = MBProgressHUDModeCustomView;
            UIImageView *sucView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"hud_success"]];
            hud.customView = sucView;
            [hud hide:YES afterDelay:1.2f];
        }
            break;
        case LCProgressHUDStatusError: {
            hud.mode = MBProgressHUDModeCustomView;
            UIImageView *errView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"hud_error"]];
            hud.customView = errView;
            [hud hide:YES afterDelay:1.2f];
        }
            break;
        case LCProgressHUDStatusWaitting: {
            hud.mode = MBProgressHUDModeIndeterminate;
        }
            break;
        default:
            break;
    }
}

+ (void)hide:(BOOL)animated keep:(BOOL)keep {
    
    LCProgressHUD *hud = [LCProgressHUD sharedHUD];
    [hud hide:YES];
    if (keep == NO) {
        hud = nil;
    }
}

@end
