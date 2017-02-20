//
//  VideoListModel.h
//  CommonTool
//
//  Created by 张永杰 on 2017/2/20.
//  Copyright © 2017年 张永杰. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VideoListModel : NSObject

@property (nonatomic, copy)NSString   *videoHomeSid;
@property (nonatomic, strong)NSArray  *videoSidList;
@property (nonatomic, strong)NSArray  *videoList;

@end
