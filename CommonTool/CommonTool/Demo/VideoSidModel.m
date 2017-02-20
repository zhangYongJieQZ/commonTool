//
//  VideoSidModel.m
//  CommonTool
//
//  Created by 张永杰 on 2017/2/20.
//  Copyright © 2017年 张永杰. All rights reserved.
//

#import "VideoSidModel.h"

@implementation VideoSidModel

+ (NSDictionary *)modelCustomPropertyMapper{
    return @{
             @"sid":@"sid",
             @"title":@"title",
             @"imgsrc":@"imgsrc"
             };

}
@end
