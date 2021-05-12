//
//  UIFont+TWAdd.m
//  ZHSQMobileApp
//
//  Created by 研发部 on 2021/5/8.
//

#import "UIFont+TWAdd.h"

@implementation UIFont (TWAdd)

+ (UIFont *)tw_systemFontOfSize:(CGFloat)fontSize
{
    return [UIFont systemFontOfSize:fontSize];
}

+ (UIFont *)tw_boldSystemFontOfSize:(CGFloat)fontSize
{
    return [UIFont boldSystemFontOfSize:fontSize];
}

@end
