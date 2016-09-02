//
//  UILabel+ZRAddition.h
//  ZRFlower
//
//  Created by ZRFlower on 16/4/27.
//  Copyright © 2016年 Flower. All rights reserved.
//  基础方法
//

#import <UIKit/UIKit.h>

@interface UILabel (ZRAddition)

+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text textColor:(UIColor *)textColor font:(UIFont *)font;

/**
 *  Label得到text数据后,计算text文本宽度,调整Label的frame的宽度
 *
 *  @param text     Label的显示内容
 *  @param fontSize 文本的字体大小
 */
- (void)labelSingleLineWithText:(NSString *)text;

/**
 *  Label得到text数据后,计算text文本的高度,调整Label的frame的高度
 *
 *  @param text        Label的显示内容
 *  @param lineSpacing 行间距
 */
- (void)labelMultiLineWithText:(NSString *)text lineSpacing:(CGFloat)lineSpacing;

@end
