//
//  NSArray+TWAdd.h
//  ZHSQMobileApp
//
//  Created by 研发部 on 2021/5/8.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (TWAdd)
/**
 数字数组、字符串数组、字典数组排序

 @param key 字典根据哪个key排序
 @param ascending 升序还是降序
 @return 排序后的数组
 */
- (NSArray *)sortedArrayWithKey:(nullable NSString *)key ascending:(BOOL)ascending;

/**
 汉字数组排序

 @param ascending 升序还是降序
 @return 排序后的数组
 */
- (NSArray *)sortedArrayWithAscending:(BOOL)ascending;

@end

NS_ASSUME_NONNULL_END
