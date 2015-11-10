//
//  Created by 刘超 on 15/4/14.
//  Copyright (c) 2015年 Leo. All rights reserved.
//
//  Email : leoios@sina.com
//  GitHub: http://github.com/LeoiOS
//  如有问题或建议请给我发 Email, 或在该项目的 GitHub 主页 Issues 我, 谢谢:)
//
//  活动指示器

#import "LCProgressHUD.h"

// 背景视图的宽度/高度
#define BGVIEW_WIDTH 100.0f
// 文字大小
#define TEXT_SIZE    16.0f

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
    [hud show:YES];
    [hud setLabelText:text];
    [hud setRemoveFromSuperViewOnHide:YES];
    [hud setLabelFont:[UIFont boldSystemFontOfSize:TEXT_SIZE]];
    [hud setMinSize:CGSizeMake(BGVIEW_WIDTH, BGVIEW_WIDTH)];
    [[UIApplication sharedApplication].keyWindow addSubview:hud];
    
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"LCProgressHUD" ofType:@"bundle"];
    
    switch (status) {
            
        case LCProgressHUDStatusSuccess: {
            
            NSString *sucPath = [bundlePath stringByAppendingPathComponent:@"hud_success@2x.png"];
            UIImage *sucImage = [UIImage imageWithContentsOfFile:sucPath];
            
            hud.mode = MBProgressHUDModeCustomView;
            UIImageView *sucView = [[UIImageView alloc] initWithImage:sucImage];
            hud.customView = sucView;
            [hud hide:YES afterDelay:2.0f];
        }
            break;
            
        case LCProgressHUDStatusError: {
            
            NSString *errPath = [bundlePath stringByAppendingPathComponent:@"hud_error@2x.png"];
            UIImage *errImage = [UIImage imageWithContentsOfFile:errPath];
            
            hud.mode = MBProgressHUDModeCustomView;
            UIImageView *errView = [[UIImageView alloc] initWithImage:errImage];
            hud.customView = errView;
            [hud hide:YES afterDelay:2.0f];
        }
            break;
            
        case LCProgressHUDStatusWaitting: {
            
            hud.mode = MBProgressHUDModeIndeterminate;
        }
            break;
            
        case LCProgressHUDStatusInfo: {
            
            NSString *infoPath = [bundlePath stringByAppendingPathComponent:@"hud_info@2x.png"];
            UIImage *infoImage = [UIImage imageWithContentsOfFile:infoPath];
            
            hud.mode = MBProgressHUDModeCustomView;
            UIImageView *infoView = [[UIImageView alloc] initWithImage:infoImage];
            hud.customView = infoView;
            [hud hide:YES afterDelay:2.0f];
        }
            break;
            
        default:
            break;
    }
}

+ (void)showMessage:(NSString *)text {
    
    LCProgressHUD *hud = [LCProgressHUD sharedHUD];
    [hud show:YES];
    [hud setLabelText:text];
    [hud setMinSize:CGSizeZero];
    [hud setMode:MBProgressHUDModeText];
    [hud setRemoveFromSuperViewOnHide:YES];
    [hud setLabelFont:[UIFont boldSystemFontOfSize:TEXT_SIZE]];
    [[UIApplication sharedApplication].keyWindow addSubview:hud];
    [hud hide:YES afterDelay:2.0f];
}

+ (void)showInfoMsg:(NSString *)text {
    
    [self showStatus:LCProgressHUDStatusInfo text:text];
}

+ (void)showFailure:(NSString *)text {
    
    [self showStatus:LCProgressHUDStatusError text:text];
}

+ (void)showSuccess:(NSString *)text {
    
    [self showStatus:LCProgressHUDStatusSuccess text:text];
}

+ (void)showLoading:(NSString *)text {
    
    [self showStatus:LCProgressHUDStatusWaitting text:text];
}

+ (void)hide {
    
    [[LCProgressHUD sharedHUD] hide:YES];
}

@end
