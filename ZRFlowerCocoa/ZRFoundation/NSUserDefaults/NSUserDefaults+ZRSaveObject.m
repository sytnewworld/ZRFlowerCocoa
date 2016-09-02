//
//  NSUserDefaults+ZRSaveObject.m
//  ZRFlower
//
//  Created by ZRFlower on 16/5/13.
//  Copyright © 2016年 Flower. All rights reserved.
//

#import "NSUserDefaults+ZRSaveObject.h"

@implementation NSUserDefaults (ZRSaveObject)

+ (void)saveObject:(id)object forKey:(NSString *)key {

    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:object forKey:key];
    [userDefaults synchronize];
}

+ (id)readObjectWithKey:(NSString *)key {

    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    return [userDefaults objectForKey:key];
}

@end
