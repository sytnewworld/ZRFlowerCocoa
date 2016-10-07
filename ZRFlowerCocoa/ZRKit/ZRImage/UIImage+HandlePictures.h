//
//  UIImage+HandlePictures.h
//  DrawnPathDemo
//
//  Created by NEWWORLD on 2016/10/2.
//  Copyright © 2016年 NEWWORLD. All rights reserved.
//  自定义处理图片
//

#import <UIKit/UIKit.h>

@interface UIImage (HandlePictures)

/**
 自定义画图片
 
 @param size 图片大小
 
 @return 画好的图片
 */
+ (UIImage *)customImageWithSize:(CGSize)size;

/**
 将指定的view生成一个图片
 
 @param view 指定的view
 
 @return 生成的图片
 */
+ (UIImage *)generateView:(UIView *)view;

/**
 截取图片的指定区域，得到新的图片
 
 @param sourceImage 源图片
 @param rect        指定位置
 
 @return 新的图片
 */
+ (UIImage *)captureImageFromImage:(UIImage *)sourceImage withSepcialFrame:(CGRect)rect;

/**
 图片添加圆角
 
 @param sourceImage  源图片
 @param cornerRadius 圆角大小
 
 @return 带圆角图
 */
+ (UIImage *)createRoundedRectImage:(UIImage *)sourceImage withCornerRadius:(CGFloat)cornerRadius;

@end
