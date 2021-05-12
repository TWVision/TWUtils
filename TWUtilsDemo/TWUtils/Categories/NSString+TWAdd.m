//
//  NSString+TWAdd.m
//  ZHSQMobileApp
//
//  Created by 研发部 on 2021/5/7.
//

#import "NSString+TWAdd.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (TWAdd)

- (BOOL)isNotBlank
{
    NSCharacterSet *blank = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    for (NSInteger i = 0; i < self.length; ++i) {
        unichar c = [self characterAtIndex:i];
        if (![blank characterIsMember:c]) {
            return YES;
        }
    }
    return NO;
}

- (BOOL)isValidMobileNumber
{
    NSString *Regex = @"(1[34578])\\d{9}";
    NSPredicate *mobileTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", Regex];
    return [mobileTest evaluateWithObject:self];
}

- (BOOL)isValidEmail
{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES%@",emailRegex];
    return [emailTest evaluateWithObject:self];
}

- (BOOL)isValidIDCard
{
    NSString *IDCardRegex = @"(^[0-9]{15}$)|([0-9]{17}([0-9]|X)$)";
    NSPredicate *IDCardTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", IDCardRegex];
    return [IDCardTest evaluateWithObject:self];
}

- (NSString *)md5EncryptionStr
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    uint8_t digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5(data.bytes, (int) data.length, digest);
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [output appendFormat:@"%02x", digest[i]];
    }
    return output;
}

- (NSString *)stringByTrim {
    NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    return [self stringByTrimmingCharactersInSet:set];
}

@end
