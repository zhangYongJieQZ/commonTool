//
//  UIImage+CommonTool.h
//  CommonTool
//
//  Created by 张永杰 on 16/8/30.
//  Copyright © 2016年 张永杰. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (CommonTool)
/**
 *  生成条形码
 *
 *  @param code            code
 *  @param size            size
 *  @param color           条形码颜色
 *  @param backGroundColor 背景色
 *
 *  @return
 */
+ (UIImage *)generateBarCode:(NSString *)code size:(CGSize)size color:(UIColor *)color backGroundColor:(UIColor *)backGroundColor;
/**
 *  生成二维码
 *
 *  @param codeStr code
 *
 *  @return 
 */
+ (UIImage *)QRCodeWithString:(NSString *)codeStr;

@end
