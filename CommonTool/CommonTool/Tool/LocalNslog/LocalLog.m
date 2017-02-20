//
//  LocalLog.m
//  CommonTool
//
//  Created by 张永杰 on 16/8/30.
//  Copyright © 2016年 张永杰. All rights reserved.
//

#import "LocalLog.h"

@implementation LocalLog

+ (void)saveToFileName:(NSString *)fileName message:(NSString *)message{
    NSArray * paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);NSString * documentDirectory = [paths objectAtIndex:0];
    NSString * file = [documentDirectory stringByAppendingPathComponent:fileName];
    FILE *fp;
    if ((fp = fopen([file UTF8String], "a+")) == NULL) {
        
    }
    fputs([message UTF8String], fp);
    fclose(fp); //关闭fp所指文件
}

@end
