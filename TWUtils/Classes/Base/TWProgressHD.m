//
//  TWProgressHD.m
//  ZHSQMobileApp
//
//  Created by 研发部 on 2021/5/7.
//

#import "TWProgressHD.h"
#import "SVProgressHUD.h"

@implementation TWProgressHD

+ (void)showProgressHUD {
    [SVProgressHUD setMinimumDismissTimeInterval:3];
    [SVProgressHUD setRingThickness:2];
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeClear];
    [SVProgressHUD setBackgroundColor:UIColor.blackColor];
    [SVProgressHUD setForegroundColor:UIColor.whiteColor];
    [SVProgressHUD show];
}

+ (void)hideProgressHUD {
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeNone];
    [SVProgressHUD dismiss];
}

+ (void)showProgressWithTitle:(NSString *)title {
    [SVProgressHUD setMinimumDismissTimeInterval:3];
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeClear];
    [SVProgressHUD setBackgroundColor:UIColor.blackColor];
    [SVProgressHUD setForegroundColor:UIColor.whiteColor];
    [SVProgressHUD showWithStatus:title];
}

+ (void)reminderWithTitle:(NSString *)title {
    [SVProgressHUD setMinimumDismissTimeInterval:3];
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeClear];
    [SVProgressHUD setBackgroundColor:UIColor.blackColor];
    [SVProgressHUD setForegroundColor:UIColor.whiteColor];
    [SVProgressHUD showInfoWithStatus:title];
}

+ (void)reminderWithLetterTitle:(NSString *)title {
    [SVProgressHUD setMinimumDismissTimeInterval:3];
    [SVProgressHUD setBackgroundColor:UIColor.blackColor];
    [SVProgressHUD setForegroundColor:UIColor.whiteColor];
    [SVProgressHUD showWithStatus:title];
}

@end
