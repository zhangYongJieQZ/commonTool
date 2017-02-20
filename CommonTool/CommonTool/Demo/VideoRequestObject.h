//
//  VideoRequestObject.h
//  CommonTool
//
//  Created by 张永杰 on 2017/2/20.
//  Copyright © 2017年 张永杰. All rights reserved.
//

typedef void(^requestBlock)(id model);

#import <Foundation/Foundation.h>

@interface VideoRequestObject : NSObject

- (void)videoRequestWithParams:(NSDictionary *)params inViewController:(UIViewController *)viewController requestReturn:(requestBlock)block;

@end
