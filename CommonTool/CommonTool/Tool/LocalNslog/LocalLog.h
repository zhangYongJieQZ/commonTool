//
//  LocalLog.h
//  CommonTool
//
//  Created by 张永杰 on 16/8/30.
//  Copyright © 2016年 张永杰. All rights reserved.
//

#define ZYJDlog(FORMAT, ...) fprintf(stderr,"\nfunction:%s line:%d content:%s\n", __FUNCTION__, __LINE__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);[LocalLog saveToFileName:@"localPrint.txt" message:[NSString stringWithFormat:@"\n function:%s line:%d content:%s \n", __FUNCTION__, __LINE__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]]]

#import <Foundation/Foundation.h>

@interface LocalLog : NSObject

+ (void)saveToFileName:(NSString *)fileName message:(NSString *)message;

@end
