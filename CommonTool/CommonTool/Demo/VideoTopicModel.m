//
//  VideoTopicModel.m
//  CommonTool
//
//  Created by 张永杰 on 2017/2/20.
//  Copyright © 2017年 张永杰. All rights reserved.
//

#import "VideoTopicModel.h"

@implementation VideoTopicModel

+ (NSDictionary *)modelCustomPropertyMapper{
    return @{
             @"alias":@"alias",
             @"tname":@"tname",
             @"tid":@"tid",
             @"topic_icons":@"topic_icons"
             };
    
}

@end
