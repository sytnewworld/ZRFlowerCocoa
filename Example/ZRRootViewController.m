//
//  ZRRootViewController.m
//  ZRFlowerCocoa
//
//  Created by ZRFlower on 16/9/1.
//  Copyright © 2016年 ZRFlower. All rights reserved.
//

#import "ZRRootViewController.h"
#import "ZRQRCodeImage.h"

@implementation ZRRootViewController

- (void)viewDidLoad {

    [super viewDidLoad];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(30.0, 60.0, 180, 180.0)];
    UIImage *resultImage = [ZRQRCodeImage generateQRCodeWaterMarkImageWithURL:@"https://github.com/sytnewworld/ZRFruitDay" imageSize:180 logoImage:[UIImage imageNamed:@"logo"] logoImageSize:CGSizeMake(40, 40) colorWithRed:125 Green:38 Blue:205];
    [imageView setImage:resultImage];
    
    //    imageView.layer.shadowOffset = CGSizeMake(0, 0.5);  // 设置阴影的偏移量
    //    imageView.layer.shadowRadius = 1;  // 设置阴影的半径
    //    imageView.layer.shadowColor = [UIColor blackColor].CGColor; // 设置阴影的颜色为黑色
    //    imageView.layer.shadowOpacity = 0.3; // 设置阴影的不透明度
    
    [self.view addSubview:imageView];
}

- (void)viewWillAppear:(BOOL)animated {

    [super viewWillAppear:animated];
}

@end
