//
//  TWAppRequest.h
//  ZHSQMobileApp
//
//  Created by 研发部 on 2021/5/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^requestSuccess)(NSDictionary *responseObject);
typedef void(^requestFailure)(NSError *error);

@interface TWAppRequest : NSObject

+ (NSURLSessionDataTask *)mobileAppPostRequest:(NSString *)module
                                    parameters:(nullable NSDictionary *)parameters
                                       success:(requestSuccess)success
                                       failure:(requestFailure)failure;

@end

NS_ASSUME_NONNULL_END
