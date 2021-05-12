//
//  TWUtils.h
//  TWUtils
//
//  Created by 研发部 on 2021/5/11.
//

#import <Foundation/Foundation.h>

//! Project version number for TWUtils.
FOUNDATION_EXPORT double TWUtilsVersionNumber;

//! Project version string for TWUtils.
FOUNDATION_EXPORT const unsigned char TWUtilsVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <TWUtils/PublicHeader.h>

#if __has_include(<TWUtils/TWUtils.h>)

#pragma mark - Base
#import <TWUtils/TWAppMacro.h>
#import <TWUtils/TWAPPConfig.h>
#import <TWUtils/TWCommonUtils.h>
#import <TWUtils/TWProgressHD.h>

#pragma mark - Categories
#import <TWUtils/NSObject+TWAdd.h>
#import <TWUtils/UIColor+TWAdd.h>
#import <TWUtils/UIColor+TWAdd.h>
#import <TWUtils/UIView+TWAdd.h>
#import <TWUtils/UIFont+TWAdd.h>
#import <TWUtils/NSArray+TWAdd.h>

#pragma mark - API
#import <TWUtils/TWAppRequest.h>

//#pragma mark - BaseClass
//#import <Masonry/Masonry.h>
//#import <MJRefresh/MJRefresh.h>
//#import <TWUtils/TWBaseNavigationController.h>
//#import <TWUtils/TWBaseTabBarController.h>
//#import <TWUtils/TWBaseViewController.h>
//#import <TWUtils/TWBaseRefreshTableViewController.h>
//#import <TWUtils/TWBaseWebViewController.h>
//#import <TWUtils/TWBaseMapViewController.h>
//
//#pragma mark - User
//#import <TWUtils/TWUserInfoUtils.h>
//
//#pragma mark - ImagePicker
//#import <TWUtils/TWImagePickerManager.h>
//
//#pragma mark - PickerView
//#import <TWUtils/TWPickerView.h>
//
//#pragma mark - Timer
//#import <TWUtils/TWTimer.h>
//
//#pragma mark - WeakProxy
//#import <TWUtils/TWWeakProxy.h>

#else

#pragma mark - Base
#import "TWAppMacro.h"
#import "TWAPPConfig.h"
#import "TWCommonUtils.h"
#import "TWProgressHD.h"

#pragma mark - Categories
#import "NSObject+TWAdd.h"
#import "NSString+TWAdd.h"
#import "UIColor+TWAdd.h"
#import "UIView+TWAdd.h"
#import "UIFont+TWAdd.h"
#import "NSArray+TWAdd.h"

#pragma mark - API
#import "TWAppRequest.h"

//#pragma mark - BaseClass
//#import "Masonry.h"
//#import "MJRefresh.h"
//#import "TWBaseNavigationController.h"
//#import "TWBaseTabBarController.h"
//#import "TWBaseViewController.h"
//#import "TWBaseRefreshTableViewController.h"
//#import "TWBaseWebViewController.h"
//#import "TWBaseMapViewController.h"
//
//#pragma mark - User
//#import "TWUserInfoUtils.h"
//
//#pragma mark - ImagePicker
//#import "TWImagePickerManager.h"
//
//#pragma mark - PickerView
//#import "TWPickerView.h"
//
//#pragma mark - Timer
//#import "TWTimer.h"
//
//#pragma mark - WeakProxy
//#import "TWWeakProxy.h"

#endif
