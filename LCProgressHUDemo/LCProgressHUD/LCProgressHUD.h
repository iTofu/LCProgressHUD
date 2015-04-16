//
//  MBProgressHUD+LC.h
//  MBProgressHUDDemo
//
//  Created by 刘超 on 15/4/14.
//  Copyright (c) 2015年 Leo. All rights reserved.
//
//  * Email: leoios@sina.com
//
//  活动指示器

#import "MBProgressHUD.h"

typedef NS_ENUM(NSInteger, LCProgressHUDStatus) {
    /** 成功 */
    LCProgressHUDStatusSuccess,
    /** 失败 */
    LCProgressHUDStatusError,
    /** 等待 */
    LCProgressHUDStatusWaitting
};

@interface LCProgressHUD : MBProgressHUD

/** 返回一个HUD的单例 */
+ (instancetype)sharedHUD;

/** 在window上添加一个HUD */
+ (void)showStatus:(LCProgressHUDStatus)status text:(NSString *)text;



#pragma mark - 建议使用的方法

/** 在window上添加一个显示文字的HUD */
+ (void)showText:(NSString *)text;
/** 在window上添加一个提示`失败`的HUD */
+ (void)showErrorText:(NSString *)text;
/** 在window上添加一个提示`成功`的HUD */
+ (void)showSuccessText:(NSString *)text;
/** 在window上添加一个提示`等待`的HUD, 需要手动关闭 */
+ (void)showWaittingText:(NSString *)text;

/** 手动隐藏HUD */
+ (void)hide;

@end
