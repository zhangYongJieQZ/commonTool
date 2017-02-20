//
//  VideoRequestObject.m
//  CommonTool
//
//  Created by 张永杰 on 2017/2/20.
//  Copyright © 2017年 张永杰. All rights reserved.
//

#import "VideoRequestObject.h"
#import "ZYJAFNetWorking.h"
#import "VideoListModel.h"

@interface VideoRequestObject ()

@end

@implementation VideoRequestObject

- (void)videoRequestWithParams:(NSDictionary *)params inViewController:(UIViewController *)viewController requestReturn:(requestBlock)block{
    
    [MBProgressHUD showHUDAddedTo:viewController.view animated:YES];
    [ZYJAFNetWorking getPath:@"http://c.m.163.com/nc/video/home/0-10.html" parameters:nil modelClass:[VideoListModel class] success:^(id model) {
        [MBProgressHUD hideHUDForView:viewController.view animated:YES];
        NSLog(@"model = %@",model);
        block(model);
    } failure:^(NSError *error) {
        [MBProgressHUD hideHUDForView:viewController.view animated:YES];
        NSLog(@"error = %@",error);
    }];
}

@end
