//
//  TWProgressHD.h
//  ZHSQMobileApp
//
//  Created by 研发部 on 2021/5/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TWProgressHD : NSObject
/**
 *  展示加载状态
 */
+ (void)showProgressHUD;

/**
 *  隐藏加载状态
 */
+ (void)hideProgressHUD;

/**
 *  展示带文字的加载状态
 */
+ (void)showProgressWithTitle:(NSString *)title;

/**
 *  展示提示信息
 */
+ (void)reminderWithTitle:(NSString *)title;

+ (void)reminderWithLetterTitle:(NSString *)title ;

@end

NS_ASSUME_NONNULL_END
