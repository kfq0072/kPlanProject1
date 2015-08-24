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
- (void)leftBarBtn:(NSString*)title {
    UIButton *LeftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    LeftBtn.frame = CGRectMake(0, 0, 60, 20);
    [LeftBtn setImage:[UIImage imageNamed:@"Head.png"] forState:UIControlStateNormal];
    
    [LeftBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [LeftBtn setTitle:title forState:UIControlStateNormal];
    
    [LeftBtn setTitleEdgeInsets:UIEdgeInsetsMake(0, -5, 0, 0)];
    
    [LeftBtn addTarget: self action:@selector(LeftBtnClick) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *ButtonItem = [[UIBarButtonItem alloc]initWithCustomView:LeftBtn];

    // 调整 leftBarButtonItem 在 iOS7 下面的位置
    if(([[[UIDevice currentDevice] systemVersion] floatValue]>=7.0?20:0)){
        UIBarButtonItem *negativeSpacer = [[UIBarButtonItem alloc]
                                           initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
                                           target:nil action:nil];
        negativeSpacer.width = -10;
        self.navigationItem.leftBarButtonItems = @[negativeSpacer, ButtonItem];
    }else
        self.navigationItem.leftBarButtonItem = ButtonItem;
    }

- (void)LeftBtnClick {
    NSLog(@"%s",__FUNCTION__);
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
