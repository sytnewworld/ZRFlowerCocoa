//
//  ZRSizeConstant.h
//  ZRFlower
//
//  Created by ZRFlower on 16/4/25.
//  Copyright © 2016年 Flower. All rights reserved.
//

#ifndef ZRSizeConstant_h
#define ZRSizeConstant_h

//  常数
#define ZERO_ORIGIN                         0

//  iPhone 屏幕宽度和高度
#define SCREEN_WIDTH                        ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT                       ([UIScreen mainScreen].bounds.size.height)

//  statusBar高度
#define HEIGHT_STATUSBAR_PHONE              20
//  导航栏高度
#define HEIGHT_NAVIGATIONBAR_PHONE          44
//  Tabbar高度
#define HEIGHT_TABBAR_PHONE                 49

#define PHONE5_WIDTH                        320.0
#define PHONE5_HEIGHT                       568.0
#define PHONE6_WIDTH                        375.0
#define PHONE6P_WIDTH                       414.0

// 6p字体的缩放因子
#define FONT_PHONE6P_SCALE                  (PHONE6P_WIDTH / PHONE6_WIDTH)
#define FONT_PHONE6_SCALE                   1

// 6p列表图片的缩放因子
#define IMAGE_PHONE6P_SCALE                 (PHONE6P_WIDTH / PHONE6_WIDTH)
#define IMAGE_PHONE6_SCALE                  1

// 6p间距的缩放因子
#define MARGIN_PHONE6P_SCALE                (PHONE6P_WIDTH / PHONE6_WIDTH)
#define MARGIN_PHONE6_SCALE                 1

//  两种大小
#define MARGIN_SCALE(size)                  (size * [ZRAdaptiveManager marginScale])
#define SIZE_SCALE(size)                    (size * [ZRAdaptiveManager marginScale])
//  三种大小
#define MARGIN_ALL_SCALE(size)              (size * [ZRAdaptiveManager sizeAllScale])
#define SIZE_ALL_SCALE(size)                (size * [ZRAdaptiveManager sizeAllScale])

//  视图高度
#define HEIGHT_VIEW                         (SCREEN_HEIGHT - HEIGHT_STATUSBAR_PHONE - HEIGHT_NAVIGATIONBAR_PHONE)

//  视图左右边距
#define MARGIN_LEFT                         MARGIN_ALL_SCALE(12)
#define MARGIN_RIGHT                        MARGIN_ALL_SCALE(12)

// 视图宽度
#define WIDTH_VIEW                          (SCREEN_WIDTH - MARGIN_LEFT - MARGIN_RIGHT)

//  分割线高度
#define HEIGHT_SEPARATOR_LINE               0.5

#endif /* ZRSizeConstant_h */
