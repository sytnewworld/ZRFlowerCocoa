//
//  NSUserDefaults+ZRSaveObject.h
//  ZRFlower
//
//  Created by ZRFlower on 16/5/13.
//  Copyright © 2016年 Flower. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults (ZRSaveObject)

+ (void)saveObject:(id)object forKey:(NSString *)key;

+ (id)readObjectWithKey:(NSString *)key;

@end
