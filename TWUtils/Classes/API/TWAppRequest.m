//
//  TWAppRequest.m
//  ZHSQMobileApp
//
//  Created by 研发部 on 2021/5/7.
//

#import "TWAppRequest.h"
#import "AFNetworking.h"
#import "TWProgressHD.h"
#import "TWAPPConfig.h"

static AFHTTPSessionManager *requestSessionManager;

@implementation TWAppRequest

+ (AFHTTPSessionManager *)requestSessionManager
{
    if (!requestSessionManager) {
        requestSessionManager = [AFHTTPSessionManager manager];
        requestSessionManager.responseSerializer = [AFHTTPResponseSerializer serializer];
        requestSessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithArray:@[@"application/json",
                                                                                                @"text/html",
                                                                                                @"text/json",
                                                                                                @"text/plain",
                                                                                                @"text/javascript",
                                                                                                @"text/xml",
                                                                                                @"image/*",
                                                                                                @"application/octet-stream",
                                                                                                @"application/zip"]];
        [requestSessionManager.requestSerializer willChangeValueForKey:@"timeoutIntetval"];
        requestSessionManager.requestSerializer.timeoutInterval = 10;
        [requestSessionManager.requestSerializer didChangeValueForKey:@"timeoutIntetval"];
    }
    return requestSessionManager;
}

+ (NSURLSessionDataTask *)mobileAppPostRequest:(NSString *)module
                                    parameters:(nullable NSDictionary *)parameters
                                       success:(requestSuccess)success
                                       failure:(requestFailure)failure
{
    [TWProgressHD showProgressHUD];
    NSString *requestURL = [NSString stringWithFormat:@"%@%@",AppRequestURL,module];
    NSURLSessionDataTask *dataTask = [[self requestSessionManager] POST:requestURL
                                                             parameters:parameters
                                                                headers:nil
                                                               progress:nil
                                                                success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseData) {
        [TWProgressHD hideProgressHUD];
        NSError *err = nil;
        id responseObject  = [NSJSONSerialization JSONObjectWithData:responseData options:NSJSONReadingMutableLeaves|NSJSONReadingMutableContainers error:&err];
        NSDictionary *responseDic = nil;
        if ([responseObject isKindOfClass:NSDictionary.class])  {
            responseDic = responseObject;
        } else if ([responseObject isKindOfClass:NSArray.class]) {
            responseDic = @{@"code":@"200", @"list":responseObject};
        }
        NSInteger code = ((NSString *)responseDic[@"code"]).integerValue;
        if (200==code) {
            if (success) {
                success(responseDic);
            }
        } else {
            if (failure) {
                NSError *error = [NSError errorWithDomain:@"请求失败!" code:code userInfo:nil];
                failure(error);
            }
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [TWProgressHD hideProgressHUD];
        if (failure){
            failure(error);
        }
    }];
    return dataTask;
}

@end
