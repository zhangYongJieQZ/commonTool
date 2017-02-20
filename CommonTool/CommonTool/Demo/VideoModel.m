//
//  VideoModel.m
//  CommonTool
//
//  Created by 张永杰 on 2017/2/20.
//  Copyright © 2017年 张永杰. All rights reserved.
//

#import "VideoModel.h"
#import "VideoTopicModel.h"
@implementation VideoModel

+ (NSDictionary *)modelCustomPropertyMapper{
    return @{
             @"description1":@"description",
             };
}

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{
             @"videoTopic":[VideoTopicModel class],
             };
}

@end
