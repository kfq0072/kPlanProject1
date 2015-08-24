//
//  Utility.h
//  kPlanProject
//
//  Created by huangshuimei on 15/8/22.
//  Copyright (c) 2015年 huangshuimei. All rights reserved.
//

#import <Foundation/Foundation.h>
#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeigth [UIScreen mainScreen].bounds.size.heigth
#define UserBaseUrl @"http://112.74.65.27/app/user/"

@interface Utility : NSObject
+ (NSString*)getUserBaseUrl;
@end
