//
//  UIViewController+Navigation.m
//  CommonTool
//
//  Created by 张永杰 on 16/8/30.
//  Copyright © 2016年 张永杰. All rights reserved.
//
#define InvalidString(string) (string.length == 0 || string == nil)
//自定义navigationBar按钮
#define NAVIGATIONBAR_LEFT_TAG   810
#define NAVIGATIONBAR_RIGHT_TAG   820
#define NAVLoadImage(B)    [UIImage imageNamed:B]

#import "UIViewController+Navigation.h"

@implementation UIViewController (Navigation)
- (void)setNavigationBarBackgroundColor:(UIColor *)color{
    [[UINavigationBar appearance] setBarTintColor:color];
}

- (void)setNavigationBarBackgroundImage:(UIImage *)image{
    [[UINavigationBar appearance]setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
}

- (void)customerTitleAttributes{
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor whiteColor],
                                                                    NSFontAttributeName : [UIFont boldSystemFontOfSize:18]
                                                                    };
}

- (void)titleViewWith:(UIView *)view{
    self.navigationItem.titleView = view;
}

- (void)leftButtonCustomerWith:(UIImage *)image andTitle:(NSString *)title{
    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [leftButton addTarget:self action:@selector(leftButtonClick) forControlEvents:UIControlEventTouchUpInside];
    CGSize buttonSize = CGSizeMake(44, 44);
    if (image) {
        buttonSize = image.size;
        [leftButton setBackgroundImage:image forState:UIControlStateNormal];
    }
    leftButton.frame = CGRectMake(0, 0, buttonSize.width, buttonSize.height);
    if (!InvalidString(title)) {
        [leftButton setTitle:title forState:UIControlStateNormal];
    }
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftButton];
    self.navigationItem.leftBarButtonItem = barButtonItem;
}

- (void)rightButtonCustomerWith:(UIImage *)image andTitle:(NSString *)title{
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [rightButton addTarget:self action:@selector(rightButtonClick) forControlEvents:UIControlEventTouchUpInside];
    
    CGSize buttonSize = CGSizeMake(44, 44);
    if (image) {
        buttonSize = image.size;
        [rightButton setBackgroundImage:image forState:UIControlStateNormal];
    }
    rightButton.frame = CGRectMake( 0, 0, buttonSize.width, buttonSize.height);
    if (!InvalidString(title)) {
        [rightButton setTitle:title forState:UIControlStateNormal];
    }
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightButton];
}

- (void)createLeftButtonsWithImageNameArray:(NSArray *)imageNameAry andTitleNameArray:(NSArray *)titleNameAry{
    NSMutableArray * barButtonArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < imageNameAry.count; i ++) {
        UIButton *leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        leftBtn.tag = NAVIGATIONBAR_LEFT_TAG + i;
        NSString *imageName = imageNameAry[i];
        CGSize btnSize = CGSizeMake(44, 44);
        if (!InvalidString(imageName)) {
            UIImage *image = NAVLoadImage (imageName);
            if (image) {
                btnSize = image.size;
                [leftBtn setBackgroundImage:image forState:UIControlStateNormal];
            }
        }
        NSString *titleName = titleNameAry[i];
        if (!InvalidString(titleName)) {
            [leftBtn setTitle:titleName forState:UIControlStateNormal];
        }
        
        leftBtn.frame = CGRectMake(0, 0, btnSize.width, btnSize.height);
        [leftBtn addTarget:self action:@selector(leftButtonsClick:) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] initWithCustomView:leftBtn];
        [barButtonArray addObject:barButton];
    }
    
    self.navigationItem.leftBarButtonItems = barButtonArray;
    
}

- (void)createRightButtonsWithImageNameArray:(NSArray *)imageNameAry andTitleNameArray:(NSArray *)titleNameAry{
    NSMutableArray * barButtonArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < imageNameAry.count; i ++) {
        UIButton *leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        leftBtn.tag = NAVIGATIONBAR_RIGHT_TAG + i;
        NSString *imageName = imageNameAry[i];
        CGSize btnSize = CGSizeMake(44, 44);
        if (!InvalidString(imageName)) {
            UIImage *image = NAVLoadImage(imageName);
            if (image) {
                btnSize = image.size;
                [leftBtn setBackgroundImage:image forState:UIControlStateNormal];
            }
        }
        NSString *titleName = titleNameAry[i];
        if (!InvalidString(titleName)) {
            [leftBtn setTitle:titleName forState:UIControlStateNormal];
        }
        
        leftBtn.frame = CGRectMake(0, 0, btnSize.width, btnSize.height);
        [leftBtn addTarget:self action:@selector(rightButtonsClick:) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] initWithCustomView:leftBtn];
        [barButtonArray addObject:barButton];
    }
    
    self.navigationItem.rightBarButtonItems = barButtonArray;
}

- (void)hideSystemBackButton{
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"" style:UIBarButtonItemStyleBordered target:nil action:nil];
    [self.navigationItem setHidesBackButton:YES animated:NO];
    
}

- (void)leftButtonClick{
    if (self.navigationController.viewControllers.count > 1) {
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (void)rightButtonClick{
    
}

- (void)leftButtonsClick:(UIButton *)btn{

}

- (void)rightButtonsClick:(UIButton *)btn{

}

- (void)hideSystemLineInTabbar{
    UIImageView *lineImageView = [self findHairlineImageViewUnder:self.navigationController.navigationBar];
    if (lineImageView) {
        lineImageView.hidden = YES;
    }
}

- (UIImageView *)findHairlineImageViewUnder:(UIView *)view {
    if ([view isKindOfClass:UIImageView.class] && view.bounds.size.height <= 1.0) {
        return (UIImageView *)view;
    }
    for (UIView *subview in view.subviews) {
        UIImageView *imageView = [self findHairlineImageViewUnder:subview];
        if (imageView) {
            return imageView;
        }
    }
    return nil;
}

- (void)disablePopGesture{
    if ([self.navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.navigationController.interactivePopGestureRecognizer.enabled = NO;
    }
}

@end
