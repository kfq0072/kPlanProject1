//
//  BaseTableViewController.h
//  kPlanProject
//
//  Created by huangshuimei on 15/8/22.
//  Copyright (c) 2015年 huangshuimei. All rights reserved.
//


/**
 该基类用于显示navgationbar上的按钮
 **/

#import <UIKit/UIKit.h>

@interface BaseTableViewController : UITableViewController

- (void)leftBarBtn:(NSString*)title;

- (void)rightBarBtn:(NSString*)title;

@end
