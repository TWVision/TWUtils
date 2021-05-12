//
//  NSObject+TWAdd.m
//  ZHSQMobileApp
//
//  Created by 研发部 on 2021/5/7.
//

#import "NSObject+TWAdd.h"
#import <objc/runtime.h>

@implementation NSObject (TWAdd)

+ (void)swizzleInstanceMethod:(SEL)originalSel with:(SEL)swizzledSel
{
    Method originalMethod = class_getInstanceMethod(self, originalSel);
    Method swizzledMethod = class_getInstanceMethod(self, swizzledSel);
    BOOL didAddMethod = class_addMethod(self, originalSel, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
    if (didAddMethod) {
        class_replaceMethod(self, swizzledSel, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
    } else {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
}

+ (void)swizzleClassMethod:(SEL)originalSel with:(SEL)swizzledSel
{
    Class class = object_getClass(self);
    Method originalMethod = class_getInstanceMethod(class, originalSel);
    Method swizzledMethod = class_getInstanceMethod(class, swizzledSel);
    BOOL didAddMethod = class_addMethod(class, originalSel, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
    if (didAddMethod) {
        class_replaceMethod(class, swizzledSel, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
    } else {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
}

@end
