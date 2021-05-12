//
//  UITableViewCell+TWAdd.m
//  ZHSQMobileApp
//
//  Created by 研发部 on 2021/5/7.
//

#import "UITableViewCell+TWAdd.h"

@implementation UITableViewCell (TWAdd)

- (void)separatorInsetZero
{
    self.preservesSuperviewLayoutMargins = NO;
    self.separatorInset = UIEdgeInsetsZero;
    self.layoutMargins = UIEdgeInsetsZero;
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

@end
