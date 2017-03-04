//
//  YJRetrieveBarView.h
//  CommonTool
//
//  Created by admin on 2017/3/4.
//  Copyright © 2017年 张永杰. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^searchResult)(NSString *firstLetter);

@interface YJRetrieveBarView : UIView
//初始化唯一方式
- (instancetype)initWithFrame:(CGRect)frame;
//展示界面并返回点击字母结果
- (void)showInView:(UIView *)view searchResult:(searchResult)searchBlock;
@end
