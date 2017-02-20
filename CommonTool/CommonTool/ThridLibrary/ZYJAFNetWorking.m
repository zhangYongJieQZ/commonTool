//
//  ZYJAFNetWorking.m
//  ZYJAFNetWorking
//
//  Created by Yongjie on 14-12-24.
//  Copyright (c) 2014年 yongJie. All rights reserved.
//

#import "ZYJAFNetWorking.h"
#import <AFNetworking.h>

@implementation ZYJAFNetWorking

+ (void)getPath:(NSString *)path
     parameters:(NSDictionary *)parameters
      modelClass:(Class )modelClass
        success:(SuccessBlock)success
        failure:(errorBlock)failure{
    AFHTTPSessionManager *httpManager=[AFHTTPSessionManager manager];
    httpManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json",@"text/json",@"text/javascript",@"text/html",nil];//设置相应内容类型
    [httpManager GET:path parameters:parameters progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        DLog(@"get response = %@",responseObject);
        id changeModel = [modelClass yy_modelWithJSON:responseObject];
        success(changeModel);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        DLog(@"get error = %@",error);
        failure(error);

    }];
}

+ (void)postPath:(NSString *)path
      parameters:(NSDictionary *)parameters
      modelClass:(Class)modelClass
         success:(SuccessBlock)success
         failure:(errorBlock)failure{
    AFHTTPSessionManager *httpManager=[AFHTTPSessionManager manager];
    httpManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json",@"text/json",@"text/javascript",@"text/html",nil];//设置相应内容类型
    [httpManager POST:path parameters:parameters progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        DLog(@"post response = %@",responseObject);
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        DLog(@"post error = %@",error);
        failure(error);
    }];
}

- (void)uploadImageWithPath:(NSString *)path
                 parameters:(NSDictionary *)parameters
                    success:(SuccessBlock)success
                    failure:(errorBlock)failure{
    AFHTTPSessionManager *httpManager=[AFHTTPSessionManager manager];
    [httpManager POST:path parameters:parameters constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        //文件处理
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}

@end
