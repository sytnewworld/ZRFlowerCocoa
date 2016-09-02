//
//  NSString+ZREncryption.m
//  ZRFlower
//
//  Created by ZRFlower on 16/5/23.
//  Copyright © 2016年 Flower. All rights reserved.
//

#import "NSString+ZREncryption.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (ZREncryption)

- (NSString *)MD5 {

    const char *cStr = [self UTF8String];
    unsigned char digest[ CC_MD5_DIGEST_LENGTH ];
    CC_MD5 ( cStr, (CC_LONG)strlen (cStr), digest );
    NSMutableString *md5String = [ NSMutableString stringWithCapacity : CC_MD5_DIGEST_LENGTH * 2 ];
    for ( int i = 0 ; i < CC_MD5_DIGEST_LENGTH ; i++)
        [md5String appendFormat : @"%02x" , digest[i]];
    
    return md5String;
}

@end
