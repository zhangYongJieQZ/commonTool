//
//  VideoModel.h
//  CommonTool
//
//  Created by 张永杰 on 2017/2/20.
//  Copyright © 2017年 张永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
@class VideoTopicModel;
@interface VideoModel : NSObject
@property (nonatomic, copy)NSString  *topicImg;
@property (nonatomic, copy)NSString  *videosource;
@property (nonatomic, copy)NSString  *mp4Hd_url;
@property (nonatomic, copy)NSString  *topicDesc;
@property (nonatomic, copy)NSString  *cover;
@property (nonatomic, copy)NSString  *title;
@property (nonatomic, copy)NSString  *playCount;
@property (nonatomic, copy)NSString  *replyBoard;
@property (nonatomic, strong)VideoTopicModel  *videoTopic;
@property (nonatomic, copy)NSString  *sectiontitle;
@property (nonatomic, copy)NSString  *replyid;
@property (nonatomic, copy)NSString  *description1;
@property (nonatomic, copy)NSString  *mp4_url;
@property (nonatomic, copy)NSString  *length;
@property (nonatomic, copy)NSString  *playersize;
@property (nonatomic, copy)NSString  *vid;
@property (nonatomic, copy)NSString  *m3u8Hd_url;
@property (nonatomic, copy)NSString  *ptime;
@property (nonatomic, copy)NSString  *topicName;



@end
