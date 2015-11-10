//
//  Created by 刘超 on 15/4/14.
//  Copyright (c) 2015年 Leo. All rights reserved.
//
//  Email : leoios@sina.com
//  GitHub: http://github.com/LeoiOS
//  如有问题或建议请给我发 Email, 或在该项目的 GitHub 主页 Issues 我, 谢谢:)
//
//  活动指示器

#import "MBProgressHUD.h"

typedef NS_ENUM(NSInteger, LCProgressHUDStatus) {
    
    /** 成功 */
    LCProgressHUDStatusSuccess,
    
    /** 失败 */
    LCProgressHUDStatusError,
    
    /** 提示 */
    LCProgressHUDStatusInfo,
    
    /** 等待 */
    LCProgressHUDStatusWaitting
};

@interface LCProgressHUD : MBProgressHUD

/** 返回一个 HUD 的单例 */
+ (instancetype)sharedHUD;

/** 在 window 上添加一个 HUD */
+ (void)showStatus:(LCProgressHUDStatus)status text:(NSString *)text;



#pragma mark - 建议使用的方法

/** 在 window 上添加一个只显示文字的 HUD */
+ (void)showMessage:(NSString *)text;

/** 在 window 上添加一个提示`信息`的 HUD */
+ (void)showInfoMsg:(NSString *)text;

/** 在 window 上添加一个提示`失败`的 HUD */
+ (void)showFailure:(NSString *)text;

/** 在 window 上添加一个提示`成功`的 HUD */
+ (void)showSuccess:(NSString *)text;

/** 在 window 上添加一个提示`等待`的 HUD, 需要手动关闭 */
+ (void)showLoading:(NSString *)text;

/** 手动隐藏 HUD */
+ (void)hide;

@end
