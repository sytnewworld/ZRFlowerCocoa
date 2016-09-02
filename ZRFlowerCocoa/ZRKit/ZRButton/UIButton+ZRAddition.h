//
//  UIButton+ZRAddition.h
//  ZRFlower
//
//  Created by ZRFlower on 16/4/25.
//  Copyright © 2016年 Flower. All rights reserved.
//  一些基本的方法
//

#import <UIKit/UIKit.h>

@interface UIButton (ZRAddition)
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
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor;

/**
 *  图片和标题排列(水平或垂直)居中的按钮,默认(水平排列图片在左，文字在右;垂直排列图片在上，文字在下),否则相反
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
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor fontName:(NSString *)fontName fontSize:(CGFloat)fontSize imageName:(NSString *)imageName margin:(CGFloat)margin direction:(NSInteger)direction isDefault:(BOOL)isDefault;
/// 调整button中的图片和位置位置
- (void)adjustButtonTitleImageWithFontSize:(CGFloat)fontSize margin:(CGFloat)margin direction:(NSInteger)direction isDefault:(BOOL)isDefault;
/// 生成登录、注册该类的按钮

@end
