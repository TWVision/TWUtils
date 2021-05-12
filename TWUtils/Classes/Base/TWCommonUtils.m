//
//  TWCommonUtils.m
//  ZHSQMobileApp
//
//  Created by 研发部 on 2021/5/7.
//

#import "TWCommonUtils.h"

@implementation TWCommonUtils

+ (CGRect)getScreenFrame
{
    return UIScreen.mainScreen.bounds;
}

+ (UIEdgeInsets)getSafeAreaInsets
{
    UIWindow *window = [UIApplication sharedApplication].windows.firstObject;
    if (![window isKeyWindow]) {
        UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
        if (CGRectEqualToRect(keyWindow.bounds, [UIScreen mainScreen].bounds)) {
            window = keyWindow;
        }
    }
    if ([UIWindow instancesRespondToSelector:@selector(safeAreaInsets)]) {
        UIEdgeInsets insets = [window safeAreaInsets];
        return insets;
    }
    return UIEdgeInsetsZero;
}

+ (CGFloat)getStatusBarHeight
{
    return self.getSafeAreaInsets.top ? : 20;
}

+ (CGFloat)getSafeAreaBottom
{
    return self.getSafeAreaInsets.bottom;
}

+ (UIUserInterfaceIdiom)getDeviceType
{
    return UIDevice.currentDevice.userInterfaceIdiom;
}

+ (NSDictionary *)getInfoDictionary
{
    NSDictionary *infoDict = [NSBundle mainBundle].localizedInfoDictionary;
    if (!infoDict || !infoDict.count) {
        infoDict = [NSBundle mainBundle].infoDictionary;
    }
    if (!infoDict || !infoDict.count) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"Info" ofType:@"plist"];
        infoDict = [NSDictionary dictionaryWithContentsOfFile:path];
    }
    return infoDict ? infoDict : @{};
}

//+ (BOOL)isIPhoneX
//{
//    return (CGSizeEqualToSize([UIScreen mainScreen].bounds.size, CGSizeMake(375, 812)) ||
//            CGSizeEqualToSize([UIScreen mainScreen].bounds.size, CGSizeMake(812, 375)) ||
//            CGSizeEqualToSize([UIScreen mainScreen].bounds.size, CGSizeMake(414, 896)) ||
//            CGSizeEqualToSize([UIScreen mainScreen].bounds.size, CGSizeMake(896, 414)) ||
//            CGSizeEqualToSize([UIScreen mainScreen].bounds.size, CGSizeMake(390, 844)) ||
//            CGSizeEqualToSize([UIScreen mainScreen].bounds.size, CGSizeMake(844, 390)) ||
//            CGSizeEqualToSize([UIScreen mainScreen].bounds.size, CGSizeMake(428, 926)) ||
//            CGSizeEqualToSize([UIScreen mainScreen].bounds.size, CGSizeMake(926, 428)));
//}

@end
