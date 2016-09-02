//
//  ZRConstant.h
//  ZRFlower
//
//  Created by ZRFlower on 16/4/25.
//  Copyright © 2016年 Flower. All rights reserved.
//

#ifndef ZRConstant_h
#define ZRConstant_h

#define IOS_VERSION                         ([[[UIDevice currentDevice] systemVersion] floatValue])

//  延迟处理时间
#define kDispatch_Time_Delay                1.0f

//  常用的定义
#define WEAK_SELF                           __weak __typeof(&*self) weakSelf = self
#define STRONG_SELF                         __strong __typeof(&*weakSelf) self = weakSelf

//  添加的预编译
#import "ZRColorConstant.h"
#import "ZRFontConstant.h"
#import "ZRSizeConstant.h"

#endif /* ZRConstant_h */
