//
//  Color.h
//  CommonTool
//
//  Created by 张永杰 on 2017/2/20.
//  Copyright © 2017年 张永杰. All rights reserved.
//

#ifndef Color_h
#define Color_h

/// Color
#define UIColorRGB(R,G,B)   [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1.0]

#define UIColorRGBA(R,G,B,A)   [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A]

#define UIColorHex(hex)     [DataHelper colorWithHexString:hex]


#define UIColorHexSystem(rgbValue,a) [UIColor colorWithRed:((CGFloat)((rgbValue & 0xFF0000) >> 16))/255.0 green:((CGFloat)((rgbValue & 0xFF00) >> 8))/255.0 blue:((CGFloat)(rgbValue & 0xFF))/255.0 alpha:a]




#endif /* Color_h */
