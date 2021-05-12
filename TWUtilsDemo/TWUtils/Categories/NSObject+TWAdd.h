//
//  NSObject+TWAdd.h
//  ZHSQMobileApp
//
//  Created by 研发部 on 2021/5/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (TWAdd)

#pragma mark - Swap method (Swizzling)
///=============================================================================
/// @name Swap method (Swizzling)
///=============================================================================

/**
 Swap two instance method's implementation in one class. Dangerous, be careful.
 
 @param originalSel   Selector 1.
 @param swizzledSel        Selector 2.
 */
+ (void)swizzleInstanceMethod:(SEL)originalSel with:(SEL)swizzledSel;

/**
 Swap two class method's implementation in one class. Dangerous, be careful.
 
 @param originalSel   Selector 1.
 @param swizzledSel        Selector 2.
 */
+ (void)swizzleClassMethod:(SEL)originalSel with:(SEL)swizzledSel;

@end

NS_ASSUME_NONNULL_END
