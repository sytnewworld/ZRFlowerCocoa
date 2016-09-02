//
//  UIColor+ZRAddition.h
//  ZRFlower
//
//  Created by ZRFlower on 16/4/25.
//  Copyright © 2016年 Flower. All rights reserved.
//

#import <UIKit/UIKit.h>

#define ZRRGB(RED, GREEN, BLUE)             [UIColor zr_colorWithRed:RED green:GREEN blue:BLUE]
#define ZRRGBA(RED, GREEN, BLUE, ALPHA)     [UIColor zr_colorWithRed:RED green:GREEN blue:BLUE alpha:ALPHA]
#define ZRRGBFromHex(HEX)                   [UIColor zr_colorFromHex:HEX]

@interface UIColor (ZRAddition)

+ (UIColor *)zr_colorFromHex:(NSInteger)hex;
+ (UIColor *)zr_colorFromHex:(NSInteger)hex alpha:(CGFloat)alpha;

+ (UIColor *)zr_colorWithRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue;

/**
 red:0-255
 green:0-255
 blue:0-255
 alpha:0-100
 */
+ (UIColor *)zr_colorWithRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(NSInteger)alpha;

@end
