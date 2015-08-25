//
//  Utility.m
//  kPlanProject
//
//  Created by huangshuimei on 15/8/22.
//  Copyright (c) 2015年 huangshuimei. All rights reserved.
//

#import "Utility.h"

@implementation Utility

+ (NSString*)encodeBase64:(NSString*)decodestr {
    return [[decodestr dataUsingEncoding:NSUTF8StringEncoding]base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
}

+ (NSString*)decodeBase64:(NSString*)encodeStr {
    NSData *dataFromBase64String=[[NSData alloc]initWithBase64EncodedString:encodeStr options:NSDataBase64DecodingIgnoreUnknownCharacters];
    return [[NSString alloc]initWithData:dataFromBase64String encoding:NSUTF8StringEncoding];
}


@end
