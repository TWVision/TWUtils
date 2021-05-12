//
//  NSArray+TWAdd.m
//  ZHSQMobileApp
//
//  Created by 研发部 on 2021/5/8.
//

#import "NSArray+TWAdd.h"

@implementation NSArray (TWAdd)

- (NSArray *)sortedArrayWithKey:(nullable NSString *)key ascending:(BOOL)ascending
{
    NSSortDescriptor *sd = [NSSortDescriptor sortDescriptorWithKey:key ascending:ascending];
    return [self sortedArrayUsingDescriptors:[NSArray arrayWithObjects:sd, nil]];
}

- (NSArray *)sortedArrayWithAscending:(BOOL)ascending
{
    NSArray *resultArray = [self sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        NSString *u1,*u2;
        u1 = (NSString *)obj1;
        u2 = (NSString *)obj2;
        return ascending?([u1 localizedCompare:u2] == NSOrderedAscending):([u1 localizedCompare:u2] != NSOrderedAscending);
    }];
    return resultArray;
}

@end
