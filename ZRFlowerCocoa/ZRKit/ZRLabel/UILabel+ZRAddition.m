//
//  UILabel+ZRAddition.m
//  ZRFlower
//
//  Created by ZRFlower on 16/4/27.
//  Copyright © 2016年 Flower. All rights reserved.
//  基础方法
//

#import "UILabel+ZRAddition.h"
#import "ZRConstant.h"

#define ZR_MULTILINE_TEXTSIZE(text, font, maxSize, mode) [text length] > 0 ? [text boundingRectWithSize:maxSize options:(NSStringDrawingUsesLineFragmentOrigin) attributes:@{NSFontAttributeName:font} context:nil].size : CGSizeZero;

/// 有行间距计算多行Label的高度
#define ZR_MULTILINE_TEXTSIZE_MARGIN(text, font, maxSize, mode) [text length] > 0 ? [text boundingRectWithSize:maxSize options:(NSStringDrawingUsesLineFragmentOrigin) attributes:@{NSFontAttributeName:font, NSParagraphStyleAttributeName: paragraphStyle} context:nil].size : CGSizeZero;

@implementation UILabel (ZRAddition)

+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text textColor:(UIColor *)textColor font:(UIFont *)font {

    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.text = text;
    label.textColor = textColor;
    label.font = font;
    return label;
}

/**
 *  Label得到text数据后,计算text文本宽度,调整Label的frame的宽度
 *
 *  @param text     Label的显示内容
 *  @param fontSize 文本的字体大小
 */
- (void)labelSingleLineWithText:(NSString *)text {
    
    self.text = text;
    CGRect frame = self.frame;
    CGSize size = ZR_MULTILINE_TEXTSIZE(text, self.font, CGSizeMake(SCREEN_WIDTH, self.frame.size.height), ZERO_ORIGIN);
    
    frame.size.width = size.width;
    self.frame = frame;
}

/**
 *  Label得到text数据后,计算text文本的高度,调整Label的frame的高度
 *
 *  @param text        Label的显示内容
 *  @param lineSpacing 行间距
 */
- (void)labelMultiLineWithText:(NSString *)text lineSpacing:(CGFloat)lineSpacing {
    
    if (text) {
        // 设置label的富文本
        NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:text];
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.lineSpacing = lineSpacing;
        [attributeString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(ZERO_ORIGIN, text.length)];
        self.attributedText = attributeString;
        
        // 调整label的高度
        CGRect frame = self.frame;
        CGSize size = ZR_MULTILINE_TEXTSIZE_MARGIN(text, self.font, CGSizeMake(frame.size.width, FLT_MAX), ZERO_ORIGIN);
        if (size.height < (self.frame.size.height + lineSpacing)) {
            self.textAlignment = NSTextAlignmentCenter;
        }
        frame.size.height = size.height;
        self.frame = frame;
    }
}

@end
