//
//  LoginViewController.m
//  kPlanProject
//
//  Created by huangshuimei on 15/8/22.
//  Copyright (c) 2015年 huangshuimei. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *phoneText;
@property (weak, nonatomic) IBOutlet UITextField *passwordText;
@property (weak, nonatomic) IBOutlet UIButton *useFoLvBtn;



- (IBAction)useFoLvClick:(id)sender;
- (IBAction)loginClick:(id)sender;
- (IBAction)forgetPassWordClick:(id)sender;
- (IBAction)loginByQQ:(id)sender;
- (IBAction)loginByWeChat:(id)sender;
- (IBAction)loginBySina:(id)sender;


@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
//    [self useFoLvIdToLogin];
    
    
    _phoneText.layer.cornerRadius = 40.0;
    
    [self leftBarBtn:@"返回"];
    
//    self.navigationController.navigationItem.backBarButtonItem.title = @"返回";
    
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)useFoLvIdToLogin {
    UIButton *foLvIdBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [foLvIdBtn setTitle:@"切换到佛旅ID登录>" forState:UIControlStateNormal];
    
    foLvIdBtn.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:foLvIdBtn];
    
    NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:foLvIdBtn attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:80.0];
    
    NSLayoutConstraint *right = [NSLayoutConstraint constraintWithItem:foLvIdBtn attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1 constant:30.0];
    
    NSLayoutConstraint *width = [NSLayoutConstraint constraintWithItem:foLvIdBtn attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:200.0];
    NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem:foLvIdBtn attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:80.0];

    [self.view addConstraint:top];
    [self.view addConstraint:right];
    [self.view addConstraint:width];
    [self.view addConstraint:height];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)useFoLvClick:(id)sender {
}

- (IBAction)loginClick:(id)sender {
}

- (IBAction)forgetPassWordClick:(id)sender {
}

- (IBAction)loginByQQ:(id)sender {
}

- (IBAction)loginByWeChat:(id)sender {
}

- (IBAction)loginBySina:(id)sender {
}
@end
