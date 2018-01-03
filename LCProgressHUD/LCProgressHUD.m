//
//  Created by 刘超 on 15/4/14.
//  Copyright (c) 2015年 Leo. All rights reserved.
//

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
        hud = [[self alloc] initWithWindow:[UIApplication sharedApplication].keyWindow];
    });
    return hud;
}

+ (void)showStatus:(LCProgressHUDStatus)status text:(NSString *)text {

    LCProgressHUD *hud = [LCProgressHUD sharedHUD];
    [hud show:YES];
    [hud setShowNow:YES];
    [hud setLabelText:text];
    [hud setRemoveFromSuperViewOnHide:YES];
    [hud setLabelFont:[UIFont boldSystemFontOfSize:TEXT_SIZE]];
    [hud setMinSize:CGSizeMake(BGVIEW_WIDTH, BGVIEW_WIDTH)];
    [[UIApplication sharedApplication].keyWindow addSubview:hud];

    NSString *bundlePath = [[NSBundle bundleForClass:[self class]] pathForResource:@"LCProgressHUD" ofType:@"bundle"];

    switch (status) {

        case LCProgressHUDStatusSuccess: {

            NSString *sucPath = [bundlePath stringByAppendingPathComponent:@"hud_success@2x.png"];
            UIImage *sucImage = [UIImage imageWithContentsOfFile:sucPath];

            hud.mode = MBProgressHUDModeCustomView;
            UIImageView *sucView = [[UIImageView alloc] initWithImage:sucImage];
            hud.customView = sucView;
            [hud hide:YES afterDelay:2.0f];
            
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [hud setShowNow:NO];
            });
        }
            break;

        case LCProgressHUDStatusError: {

            NSString *errPath = [bundlePath stringByAppendingPathComponent:@"hud_error@2x.png"];
            UIImage *errImage = [UIImage imageWithContentsOfFile:errPath];

            hud.mode = MBProgressHUDModeCustomView;
            UIImageView *errView = [[UIImageView alloc] initWithImage:errImage];
            hud.customView = errView;
            [hud hide:YES afterDelay:2.0f];
            
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [hud setShowNow:NO];
            });
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
            
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [hud setShowNow:NO];
            });
        }
            break;

        default:
            break;
    }
}

+ (void)showMessage:(NSString *)text {

    LCProgressHUD *hud = [LCProgressHUD sharedHUD];
    [hud show:YES];
    [hud setShowNow:YES];
    [hud setLabelText:text];
    [hud setMinSize:CGSizeZero];
    [hud setMode:MBProgressHUDModeText];
    [hud setRemoveFromSuperViewOnHide:YES];
    [hud setLabelFont:[UIFont boldSystemFontOfSize:TEXT_SIZE]];
    [[UIApplication sharedApplication].keyWindow addSubview:hud];
//    [hud hide:YES afterDelay:2.0f];

    [NSTimer scheduledTimerWithTimeInterval:2.0f target:self selector:@selector(hide) userInfo:nil repeats:NO];
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
    
    [[LCProgressHUD sharedHUD] setShowNow:NO];
    [[LCProgressHUD sharedHUD] hide:YES];
}

@end
