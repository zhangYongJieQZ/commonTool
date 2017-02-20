//
//  Config.h
//  CommonTool
//
//  Created by 张永杰 on 2017/2/20.
//  Copyright © 2017年 张永杰. All rights reserved.
//

#ifndef Config_h
#define Config_h


/// Dlog
#ifdef DEBUG
#   define DLog(fmt, ...) {NSLog((@"^ %s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);}
#   define ELog(err) {if(err) DLog(@"^ %@", err)}
#else
#   define DLog(...)
#   define ELog(err)
#endif

//iOS版本判断
#define iOS6 ([[[UIDevice currentDevice]systemVersion]floatValue] < 7.0)

#define iOS7 ([[[UIDevice currentDevice]systemVersion]floatValue] >= 7.0)

#define iOS8 ([[[UIDevice currentDevice]systemVersion]floatValue] >= 8.0)

#define iOS9 ([[[UIDevice currentDevice]systemVersion]floatValue] >= 9.0)

#define iOS10 ([[[UIDevice currentDevice]systemVersion]floatValue] >= 10.0)
#define ios_version [[[UIDevice currentDevice]systemVersion]floatValue]

/// Height/Width
#define kScreenWidth        [UIScreen mainScreen].bounds.size.width
#define kScreenHeight       [UIScreen mainScreen].bounds.size.height
#define kViewHeight         ([UIScreen mainScreen].bounds.size.height - 64.0)
//比例放大
#define kWidthRace(x)        ((x) * kScreenWidth) / 320.0
#define kiP6WidthRace(x)           ((x) * kScreenWidth) / 375.0

/*
 *判断和修改空值
 */
#define NotNullJudge(x) ![(x) isKindOfClass:[NSNull class]] && (x) != nil

#define StringHasDataJudge(x) ![(x) isKindOfClass:[NSNull class]] && (x) != nil && ![(x) isEqualToString:@""]

#define ChangeNullData(x) [(x) isKindOfClass:[NSNull class]]?@"":((x) == nil ? @"":(x))


//block 弱引用
#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;

#pragma mark 用户数据出来
#define kUserMessageManager [UserMessageManager sharedUserMessageManager]

#pragma mark delegate

#define kAppDelegate ((AppDelegate *)[UIApplication sharedApplication].delegate)

// 圆角效果 view 10
#define ViewRadius(View, Radius)\
\
[View.layer setCornerRadius:(Radius)];\
[View.layer setMasksToBounds:YES]\

//layer颜色用来调试视图
#define redLayer(view) view.layer.borderWidth = 1.0;view.layer.borderColor = [UIColor redColor].CGColor;
#define blueLayer(view) view.layer.borderWidth = 1.0;view.layer.borderColor = [UIColor blueColor].CGColor;
#define blackLayer(view) view.layer.borderWidth = 1.0;view.layer.borderColor = [UIColor blackColor].CGColor;

//读取图片
#define LoadImage(B)    [UIImage imageNamed:B]
//线程切换
#define backQueue(block) dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), block)
#define mainQueue(block) dispatch_async(dispatch_get_main_queue(),block)

#endif /* Config_h */
