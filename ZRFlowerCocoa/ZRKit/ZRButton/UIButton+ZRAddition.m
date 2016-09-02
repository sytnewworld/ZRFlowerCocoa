//
//  UIButton+ZRAddition.m
//  ZRFlower
//
//  Created by ZRFlower on 16/4/25.
//  Copyright © 2016年 Flower. All rights reserved.
//  一些基本的方法
//

#import "UIButton+ZRAddition.h"
#import "ZRConstant.h"

#define SF_MULTILINE_TEXTSIZE(text, font, maxSize, mode) [text length] > 0 ? [text boundingRectWithSize:maxSize options:(NSStringDrawingUsesLineFragmentOrigin) attributes:@{NSFontAttributeName:font} context:nil].size : CGSizeZero;

@implementation UIButton (ZRAddition)
/**
 *  基本的UIButton方法
 *
 *  @param frame      位置
 *  @param title      标题
 *  @param font       字体大小
 *  @param titleColor 字体颜色
 *
 *  @return 基础button
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor {

    UIButton *button = [[UIButton alloc] initWithFrame:frame];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    button.titleLabel.font = font;
    return button;
}

/**
 *  图片和标题排列(水平或垂直)居中的按钮,默认(水平排列图片在左,文字在右;垂直排列图片在上,文字在下),否则相反
 *  Tips:按钮的宽度不能太窄,否则会导致title内容显示不全,排列也不会对齐
 *  @param frame      位置
 *  @param title      标题
 *  @param titleColor 标题颜色
 *  @param fontName   字体名称
 *  @param fontSize   字体大小
 *  @param imageName  图片名称
 *  @param margin     图片与标题之间的间距
 *  @param direction  排列方向(0水平或1垂直)
 *  @param isDefault  是否为默认的排列顺序
 *
 *  @return 配置好的按钮
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor fontName:(NSString *)fontName fontSize:(CGFloat)fontSize imageName:(NSString *)imageName margin:(CGFloat)margin direction:(NSInteger)direction isDefault:(BOOL)isDefault {
    
    UIButton *button = [[UIButton alloc] initWithFrame:frame];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    button.titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    button.titleLabel.font = [UIFont fontWithName:fontName size:fontSize];
    button.backgroundColor = [UIColor whiteColor];
    
    UIImage *image = [UIImage imageNamed:imageName];
    [button setImage:image forState:UIControlStateNormal];
    
    button.titleLabel.backgroundColor = [UIColor clearColor];
    button.imageView.backgroundColor = [UIColor clearColor];
    
    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    button.contentVerticalAlignment = UIControlContentVerticalAlignmentTop;
    [button adjustButtonTitleImageWithFontSize:fontSize margin:margin direction:direction isDefault:isDefault];
    return button;
}

/// 调整button中的图片和位置位置
- (void)adjustButtonTitleImageWithFontSize:(CGFloat)fontSize margin:(CGFloat)margin direction:(NSInteger)direction isDefault:(BOOL)isDefault {
    
    CGRect frame = self.frame;
    //  button的大小
    CGFloat height = frame.size.height;
    CGFloat width = frame.size.width;
    UIImage *image = self.imageView.image;
    //  图片的大小
    CGFloat imageHeight = image.size.height;
    CGFloat imageWidth = image.size.width;
    //  计算标题的宽度
    CGSize size = SF_MULTILINE_TEXTSIZE(self.titleLabel.text, self.titleLabel.font, CGSizeMake(SCREEN_WIDTH, fontSize), ZERO_ORIGIN);
    if (size.width >= width - margin - imageWidth) {
        size.width = width - margin - imageWidth;
    }
    
    if (direction == 0) {
        //  水平方向
        //  计算图片和标题以及间距总共的宽度
        CGFloat totalWidth = imageWidth + size.width + margin;
        //  调整图片、标题位置
        if (isDefault) {
            //  图片居左,标题居右
            [self setImageEdgeInsets:UIEdgeInsetsMake((height - imageHeight)/2, (width - totalWidth)/2, ZERO_ORIGIN, ZERO_ORIGIN)];
            [self setTitleEdgeInsets:UIEdgeInsetsMake((height - fontSize)/2, (width - totalWidth)/2 + margin, ZERO_ORIGIN, ZERO_ORIGIN)];
        }else {
            //  图片居右,标题居左
            [self setImageEdgeInsets:UIEdgeInsetsMake((height - imageHeight)/2, (width - totalWidth)/2 + margin + size.width, ZERO_ORIGIN, ZERO_ORIGIN)];
            [self setTitleEdgeInsets:UIEdgeInsetsMake((height - fontSize)/2, (width - totalWidth)/2 - imageWidth, ZERO_ORIGIN, ZERO_ORIGIN)];
        }
    }else if (direction == 1) {
        //  垂直方向
        //  计算图片和标题以及间距总共的高度
        CGFloat totalHeight = image.size.height + margin + size.height;
        //  调整图片、标题位置
        if (isDefault) {
            //  图片居上,标题居下
            [self setImageEdgeInsets:UIEdgeInsetsMake((height - totalHeight)/2, (width - image.size.width)/2, ZERO_ORIGIN, ZERO_ORIGIN)];
            [self setTitleEdgeInsets:UIEdgeInsetsMake((height - totalHeight)/2 + margin + image.size.height, (width - size.width)/2 - imageWidth, ZERO_ORIGIN, ZERO_ORIGIN)];
        }else {
            //  图片居下,标题居上
            [self setImageEdgeInsets:UIEdgeInsetsMake((height - totalHeight)/2 + margin + size.height, (width - image.size.width)/2, ZERO_ORIGIN, ZERO_ORIGIN)];
            [self setTitleEdgeInsets:UIEdgeInsetsMake((height - totalHeight)/2, (width - size.width)/2  - imageWidth, ZERO_ORIGIN, ZERO_ORIGIN)];
        }
    }
}

@end
