//
//  NSString+CommonTool.h
//  CommonTool
//
//  Created by 张永杰 on 16/8/30.
//  Copyright © 2016年 张永杰. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSString (CommonTool)

/*
 *版本是否需要更新
 *nowVersion:现在版本
 *newVersion : 新的版本
 */
+(BOOL)compareAppVersionShouldNeedUpdate:(NSString *)newVersion;

/*
 *获取文本宽高
 *font:字体宽高
 *size : 内容的限制区域
 */
-(CGSize)calculateTextSize:(CGFloat)font withSize:(CGSize)size;

-(CGFloat)calculateTextWidth:(CGFloat)font;

-(CGFloat)calculateTextHeight:(CGFloat)font withWidth:(CGFloat)width;

//去空格
- (NSString *)stringBySpaceTrim;

//转化成货币形式￥34,560.53
-(NSString *)convertToCurrencyStyle;

//转化成标准数字形式 3位一个","
-(NSString *)convertToDecimalStyle;

//获取设备MAC地址
+ (NSString *)getMacAddress;

//MD5
+ (NSString *)MD5WithString:(NSString *)string;

// 隐藏index开始到剩余4位的地方
+(NSString *)CardSecurityString:(NSString *)string andFirstShowIndex:(int)index;




/*
 *正则表达
 */
//是否是数字
-(BOOL)validateNumber;

//是否是数字或者英文组合的
-(BOOL)validateNumberOrLetter;

//是否是数字6位验证码
-(BOOL)validateCode;


//是否是全数字
-(BOOL)validateAllNumber;

//是否是浮点型
-(BOOL)validateFloat;

//是否是电话号码
-(BOOL)validateMobilePhone;

//是否是身份证
-(BOOL)validateIdentityCard;


//是否包含汉字
+ (BOOL)containsChinese:(NSString *)string;



@end
