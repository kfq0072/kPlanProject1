//
//  BaseViewController.m
//  kPlanProject
//
//  Created by huangshuimei on 15/8/22.
//  Copyright (c) 2015年 huangshuimei. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - add left bar
- (void)leftBarBtn:(NSString*)title andIcon :(NSString*)icon {
    UIButton *LeftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    LeftBtn.frame = CGRectMake(0, 0, 100, 20);
    [LeftBtn setImage:[UIImage imageNamed:icon] forState:UIControlStateNormal];
    
    [LeftBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [LeftBtn setTitle:title forState:UIControlStateNormal];
    
    [LeftBtn setTitleEdgeInsets:UIEdgeInsetsMake(0, 5, 0, 0)];
    
    [LeftBtn addTarget: self action:@selector(LeftBtnClick) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *ButtonItem = [[UIBarButtonItem alloc]initWithCustomView:LeftBtn];

    // 调整 leftBarButtonItem 在 iOS7 下面的位置
    if(([[[UIDevice currentDevice] systemVersion] floatValue]>=7.0?20:0)){
        UIBarButtonItem *negativeSpacer = [[UIBarButtonItem alloc]
                                           initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
                                           target:nil action:nil];
        negativeSpacer.width = -25;
        self.navigationItem.leftBarButtonItems = @[negativeSpacer, ButtonItem];
    }else
        self.navigationItem.leftBarButtonItem = ButtonItem;
    }

- (void)LeftBtnClick {
    NSLog(@"%s",__FUNCTION__);
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

- (void)backBarBtn:(NSString*)title andIcon :(NSString*)icon {
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    backBtn.frame = CGRectMake(0, 0, 100, 50);
    
    [backBtn setImage:[UIImage imageNamed:icon] forState:UIControlStateNormal];
    
    [backBtn setTitle:title forState:UIControlStateNormal];
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
    
//    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] init];
//    barButtonItem.title = @"Back";
//    self.navigationItem.backBarButtonItem = barButtonItem;
}

@end
