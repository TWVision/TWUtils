//
//  TWAppMacro.h
//  ZHSQMobileApp
//
//  Created by 研发部 on 2021/5/7.
//

#ifndef TWAppMacro_h
#define TWAppMacro_h

// 弱引用
#define TWWeakSelf __weak typeof(self) weakSelf = self;

#ifdef DEBUG
#define DLog(fmt, ...)              NSLog((@"[%s:%d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#define DLog(...)
#endif

#define ScreenFrameW                    CGRectGetWidth([TWCommonUtils getScreenFrame])
#define ScreenFrameH                    CGRectGetHeight([TWCommonUtils getScreenFrame])
#define CTScaleNum6(_num)                (ScreenFrameW/375.0f*(_num))

#define StatusBarHeight                 [TWCommonUtils getStatusBarHeight]
#define NavigationBarHeight             CTScaleNum6(44)
#define NavigationHeight                (StatusBarHeight+NavigationBarHeight)

#define SystemFont(_size)               [UIFont tw_systemFontOfSize:_size]
#define BoldSystemFont(_size)           [UIFont tw_boldSystemFontOfSize:_size]

#define APPThemeColor                   UIColorHex(88c0f2)
#define APPbackgroundColor              UIColorHex(e5e5e5)
#define APPTitleColor                   UIColorHex(787878)
#define LoadLocalImage(_imageString)     [UIImage imageNamed:_imageString]

#endif /* TWAppMacro_h */
