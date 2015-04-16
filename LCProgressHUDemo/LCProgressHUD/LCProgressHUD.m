//
//  MBProgressHUD+LC.m
//  MBProgressHUDDemo
//
//  Created by 刘超 on 15/4/14.
//  Copyright (c) 2015年 Leo. All rights reserved.
//
//  * Email: leoios@sina.com
//
//  活动指示器

#import "LCProgressHUD.h"

// 背景视图的宽度/高度
#define BGVIEW_WIDTH 100.0f
// 文字大小
#define TEXT_SIZE 14.0f

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
    hud.labelFont = [UIFont systemFontOfSize:TEXT_SIZE];
    hud.minSize = CGSizeMake(BGVIEW_WIDTH, BGVIEW_WIDTH);
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

+ (void)showText:(NSString *)text {
    
    LCProgressHUD *hud = [LCProgressHUD sharedHUD];
    [[UIApplication sharedApplication].keyWindow addSubview:hud];
    [hud show:YES];
    hud.removeFromSuperViewOnHide = YES;
    hud.labelText = text;
    hud.labelFont = [UIFont systemFontOfSize:TEXT_SIZE];
    hud.minSize = CGSizeZero;
    hud.mode = MBProgressHUDModeText;
}

+ (void)showErrorText:(NSString *)text {
    
    [self showStatus:LCProgressHUDStatusError text:text];
}

+ (void)showSuccessText:(NSString *)text {
    
    [self showStatus:LCProgressHUDStatusSuccess text:text];
}

+ (void)showWaittingText:(NSString *)text {
    
    [self showStatus:LCProgressHUDStatusWaitting text:text];
}

+ (void)hide {
    
    [[LCProgressHUD sharedHUD] hide:YES];
}

@end
