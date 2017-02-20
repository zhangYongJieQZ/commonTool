//
//  UIViewController+Navigation.h
//  CommonTool
//
//  Created by 张永杰 on 16/8/30.
//  Copyright © 2016年 张永杰. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Navigation)
/**
 *  设置bar背景色
 *
 *  @param color
 */
- (void)setNavigationBarBackgroundColor:(UIColor *)color;

/**
 *  设置bar背景图片
 *
 *  @param image
 */
- (void)setNavigationBarBackgroundImage:(UIImage *)image;

/**
 *  自定义title字体属性
 */
- (void)customerTitleAttributes;

/**
 *  替换标题
 *
 *  @param view
 */
- (void)titleViewWith:(UIView *)view;

/**
 *  自定义左按钮
 *
 *  @param image 背景图
 *  @param title 标题
 */
- (void)leftButtonCustomerWith:(UIImage *)image andTitle:(NSString *)title;

/**
 *  自定义右按钮
 *
 *  @param image 背景图
 *  @param title 标题
 */
- (void)rightButtonCustomerWith:(UIImage *)image andTitle:(NSString *)title;

/**
 *  创建左侧按钮数组
 *
 *  @param imageNameAry 图片数组 @[@"",....] String类型,空传@""
 *  @param titleNameAry 标题数组 @[@"",....] String类型,空传@""
 */
- (void)createLeftButtonsWithImageNameArray:(NSArray *)imageNameAry andTitleNameArray:(NSArray *)titleNameAry;

/**
 *  创建右侧按钮数组
 *
 *  @param imageNameAry 图片数组 @[@"",....] String类型,空传@""
 *  @param titleNameAry 标题数组 @[@"",....] String类型,空传@""
 */
- (void)createRightButtonsWithImageNameArray:(NSArray *)imageNameAry andTitleNameArray:(NSArray *)titleNameAry;

/**
 *  左侧点击事件
 */
- (void)leftButtonClick;
/**
 *  右侧点击事件
 */
- (void)rightButtonClick;
/**
 *  左侧按钮点击
 *
 *  @param btn 按钮
 */
- (void)leftButtonsClick:(UIButton *)btn;
/**
 *  右侧按钮点击
 *
 *  @param btn
 */
- (void)rightButtonsClick:(UIButton *)btn;

/**
 *  隐藏系统自带的返回按钮
 */
- (void)hideSystemBackButton;
/**
 *  隐藏导航栏下面的那条线
 */
- (void)hideSystemLineInTabbar;
/**
 *  禁用系统自带的滑动手势
 */
- (void)disablePopGesture;
@end
