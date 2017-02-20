//
//  VideoListModel.m
//  CommonTool
//
//  Created by 张永杰 on 2017/2/20.
//  Copyright © 2017年 张永杰. All rights reserved.
//

#import "VideoListModel.h"
#import "VideoSidModel.h"
#import "VideoModel.h"
@implementation VideoListModel

//如果属性和返回的数值不一致，可用此来一一对应
+ (NSDictionary *)modelCustomPropertyMapper{
    return @{
             @"videoHomeSid":@"videoHomeSid",
             };
}

//属性如果是字典或数组可以用此声明(数组的话直接声明，字典的属性生成成Class的类)
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{
             @"videoSidList":[VideoSidModel class],
             @"videoList":[VideoModel class]
             };
}

@end
