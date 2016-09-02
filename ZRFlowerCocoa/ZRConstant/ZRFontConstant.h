//
//  ZRFontConstant.h
//  ZRFlower
//
//  Created by ZRFlower on 16/4/25.
//  Copyright © 2016年 Flower. All rights reserved.
//

#ifndef ZRFontConstant_h
#define ZRFontConstant_h

/******************************** 字号 ********************************/

//  标题
#define ZR_FONT_TITLE_NORMAL                        18
//  二级标题
#define ZR_FONT_SECOND_TITLE_NORMAL                 15
//  较多部分
#define ZR_FONT_MORE_NORMAL                         14
//  文本内容
#define ZR_FONT_CONTENT_NORMAL                      12
//  少数
#define ZR_FONT_SEVERAL_NORMAL                      11

/******************************** 字体 ********************************/
#define ZR_FONT(fontsize)                           [UIFont fontWithName:@"PingFangSC-Light" size:fontsize]
#define ZR_BOLD_FONT(fontsize)                      [UIFont fontWithName:@"PingFangSC-Semibold" size:fontsize]

#define ZR_FONT_TITLE                               ZR_FONT(ZR_FONT_TITLE_NORMAL)
#define ZR_FONT_SECOND_TITLE                        ZR_FONT(ZR_FONT_SECOND_TITLE_NORMAL)
#define ZR_FONT_MORE                                ZR_FONT(ZR_FONT_MORE_NORMAL)
#define ZR_FONT_CONTENT                             ZR_FONT(ZR_FONT_CONTENT_NORMAL)
#define ZR_FOTN_SEVERAL                             ZR_FONT(ZR_FONT_SEVERAL_NORMAL)

#define ZR_BOLD_FONT_TITLE                          ZR_BOLD_FONT(ZR_FONT_TITLE_NORMAL)
#define ZR_BOLD_FONT_SECOND_TITLE                   ZR_BOLD_FONT(ZR_FONT_SECOND_TITLE_NORMAL)
#define ZR_BOLD_FONT_MORE                           ZR_BOLD_FONT(ZR_FONT_MORE_NORMAL)
#define ZR_BOLD_FONT_CONTENT                        ZR_BOLD_FONT(ZR_FONT_CONTENT_NORMAL)
#define ZR_BOLD_FOTN_SEVERAL                        ZR_BOLD_FONT(ZR_FONT_SEVERAL_NORMAL)

#endif /* ZRFontConstant_h */
