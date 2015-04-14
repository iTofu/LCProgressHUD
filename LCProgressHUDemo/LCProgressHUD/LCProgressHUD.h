//
//  MBProgressHUD+LC.h
//  MBProgressHUDDemo
//
//  Created by 刘超 on 15/4/14.
//  Copyright (c) 2015年 Leo. All rights reserved.
//
//  Email: leoios@sina.com
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

/** 隐藏HUD 是否保留该实例 默认否 */
+ (void)hide:(BOOL)animated keep:(BOOL)keep;

@end
