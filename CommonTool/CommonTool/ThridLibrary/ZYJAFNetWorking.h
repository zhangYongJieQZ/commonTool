//
//  ZYJAFNetWorking.h
//  ZYJAFNetWorking
//
//  Created by Yongjie on 14-12-24.
//  Copyright (c) 2014年 yongJie. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^SuccessBlock)(id model);
typedef void(^errorBlock)(NSError *error);
@interface ZYJAFNetWorking : NSObject

+ (void)getPath:(NSString *)path
     parameters:(NSDictionary *)parameters
      modelClass:(Class)modelClass
        success:(SuccessBlock)success
        failure:(errorBlock)failure;

+ (void)postPath:(NSString *)path
      parameters:(NSDictionary *)parameters
      modelClass:(Class)modelClass
         success:(SuccessBlock)success
         failure:(errorBlock)failure;

- (void)uploadImageWithPath:(NSString *)path
                 parameters:(NSDictionary *)parameters
                    success:(SuccessBlock)success
                    failure:(errorBlock)failure;

@end
