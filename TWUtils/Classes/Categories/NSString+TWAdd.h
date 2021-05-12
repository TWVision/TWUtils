//
//  NSString+TWAdd.h
//  ZHSQMobileApp
//
//  Created by 研发部 on 2021/5/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (TWAdd)

- (BOOL)isNotBlank;

- (BOOL)isValidMobileNumber;

- (BOOL)isValidEmail;

- (BOOL)isValidIDCard;

- (NSString *)md5EncryptionStr;
/**
 Trim blank characters (space and newline) in head and tail.
 @return the trimmed string.
 */
- (NSString *)stringByTrim;

@end

NS_ASSUME_NONNULL_END
