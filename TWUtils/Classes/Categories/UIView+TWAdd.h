//
//  UIView+TWAdd.h
//  ZHSQMobileApp
//
//  Created by 研发部 on 2021/5/8.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (TWAdd)
/**
 Returns the view's view controller (may be nil).
 */
@property (nullable, nonatomic, readonly) UIViewController *viewController;

- (void)removeAllSubviews;

- (UIImage *)snapshotImage;

@end

NS_ASSUME_NONNULL_END
