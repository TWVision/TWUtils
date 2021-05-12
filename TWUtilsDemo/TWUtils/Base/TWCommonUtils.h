//
//  TWCommonUtils.h
//  ZHSQMobileApp
//
//  Created by 研发部 on 2021/5/7.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TWCommonUtils : NSObject

+ (CGRect)getScreenFrame;

+ (CGFloat)getStatusBarHeight;

+ (CGFloat)getSafeAreaBottom;

+ (UIUserInterfaceIdiom)getDeviceType;
// 获得Info.plist数据字典
+ (NSDictionary *)getInfoDictionary;

@end

NS_ASSUME_NONNULL_END
