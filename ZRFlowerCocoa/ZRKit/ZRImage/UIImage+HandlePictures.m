//
//  UIImage+HandlePictures.m
//  DrawnPathDemo
//
//  Created by NEWWORLD on 2016/10/2.
//  Copyright © 2016年 NEWWORLD. All rights reserved.
//  自定义处理图片
//

#import "UIImage+HandlePictures.h"

@implementation UIImage (HandlePictures)

/**
 自定义画图片
 
 @param size 图片大小
 
 @return 画好的图片
 */
+ (UIImage *)customImageWithSize:(CGSize)size {
    
    UIGraphicsBeginImageContext(size);
    
    CGContextRef contex = UIGraphicsGetCurrentContext();
    
    CGContextSetStrokeColorWithColor(contex, [UIColor blueColor].CGColor);
    CGContextAddArc(contex, 50, 50, 30, -M_PI_2, M_PI_2, 0);
    CGContextSetRGBFillColor(contex, 0, 1, 0, 1);
    CGContextStrokePath(contex);
    //    CGContextDrawPath(contex, kCGPathFillStroke);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

/**
 将指定的view生成一个图片
 
 @param view 指定的view
 
 @return 生成的图片
 */
+ (UIImage *)generateView:(UIView *)view {
    
    CGRect rect = view.frame;
    //    UIGraphicsBeginImageContext(rect.size);
    UIGraphicsBeginImageContextWithOptions(rect.size, YES, 1.0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    [view.layer renderInContext:context];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

/**
 截取图片的指定区域，得到新的图片
 
 @param sourceImage 源图片
 @param rect        指定位置
 
 @return 新的图片
 */
+ (UIImage *)captureImageFromImage:(UIImage *)sourceImage withSepcialFrame:(CGRect)rect {
    
    CGImageRef sourceImageRef = sourceImage.CGImage;
    CGImageRef imageRef = CGImageCreateWithImageInRect(sourceImageRef, rect);
    
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextDrawImage(context, rect, imageRef);
    
    UIImage *image = [UIImage imageWithCGImage:imageRef];
    UIGraphicsEndImageContext();
    return image;
}

/**
 图片添加圆角
 
 @param sourceImage  源图片
 @param cornerRadius 圆角大小
 
 @return 带圆角图
 */
+ (UIImage *)createRoundedRectImage:(UIImage *)sourceImage withCornerRadius:(CGFloat)cornerRadius {
    
    CGSize sourceSize = sourceImage.size;
    CGRect rect = CGRectMake(0, 0, sourceSize.width, sourceSize.height);
//    UIGraphicsBeginImageContext(sourceSize);
    
    [UIImage createContextRefOnMultiScreenWithOpaque:NO size:sourceSize];

    //  画圆角
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    
    //    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    //    CGContextRef contextRef = CGBitmapContextCreate(NULL, sourceSize.width, sourceSize.height, 8, 4 * sourceSize.width, colorSpace, kCGImageAlphaPremultipliedFirst);
    CGContextSaveGState(contextRef);
    CGContextScaleCTM(contextRef, cornerRadius, cornerRadius);
    CGFloat scaleWidth = sourceSize.width / cornerRadius;
    CGFloat scaleHeight = sourceSize.height / cornerRadius;
    
    CGContextSetRGBStrokeColor(contextRef, 1, 0, 0, 1);
    CGContextMoveToPoint(contextRef, scaleWidth/2, 0);
    CGContextAddArcToPoint(contextRef, 0, 0, 0, scaleHeight/2, 1);
    CGContextAddArcToPoint(contextRef, 0, scaleHeight, scaleWidth/2, scaleHeight, 1);
    CGContextAddArcToPoint(contextRef, scaleWidth, scaleHeight, scaleWidth, scaleHeight/2, 1);
    CGContextAddArcToPoint(contextRef, scaleWidth, 0, scaleWidth/2, 0, 1);
    CGContextClosePath(contextRef);
    CGContextRestoreGState(contextRef);
    CGContextClip(contextRef);
    
    [sourceImage drawInRect:rect];
    
    //    CGContextDrawImage(contextRef, rect, imageRef);
    //    CGImageRef imagedMasked = CGBitmapContextCreateImage(contextRef);
    //    UIImage *image = [UIImage imageWithCGImage:imagedMasked];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}


/**
 根据不同屏幕的缩放比例，修正retina屏幕画质变差的效果
 
 @param opaque 是否透明
 @param size   画布大小
 */
+ (void)createContextRefOnMultiScreenWithOpaque:(BOOL)opaque size:(CGSize)size {
    
    // 判断屏幕是否是retina屏幕
    if ([[UIScreen mainScreen] scale] == 2.0) { // @2x
        UIGraphicsBeginImageContextWithOptions(size, opaque, 2.0);
    }else if ([[UIScreen mainScreen] scale] == 3.0) { // @3x
        UIGraphicsBeginImageContextWithOptions(size, opaque, 3.0);
    }else {
        UIGraphicsBeginImageContextWithOptions(size, opaque, 1.0);
    }
}


@end
