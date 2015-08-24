//
//  LoginViewController.m
//  kPlanProject
//
//  Created by huangshuimei on 15/8/22.
//  Copyright (c) 2015年 huangshuimei. All rights reserved.
//

#import "LoginViewController.h"
#import "Utility.h"

@interface LoginViewController () {
    BOOL isUseFoLvID;
}
@property (weak, nonatomic) IBOutlet UITextField *phoneText;
@property (weak, nonatomic) IBOutlet UITextField *passwordText;
@property (weak, nonatomic) IBOutlet UIButton *useFoLvBtn;
@property (weak, nonatomic) IBOutlet UILabel *countryCode;
@property (weak, nonatomic) IBOutlet UILabel *line;
@property (weak, nonatomic) IBOutlet UITextField *folvIDText;



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


    _phoneText.layer.cornerRadius = 40.0;
    
    [self leftBarBtn:@"返回"];
    
    
   
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


- (IBAction)useFoLvClick:(id)sender {

    
    if (!isUseFoLvID) {
        _folvIDText.hidden = NO;
        _countryCode.hidden = YES;
        _phoneText.hidden = YES;
        _line.hidden = YES;
        [_useFoLvBtn setTitle:@"切换手机用户登录>" forState:UIControlStateNormal];
    }else {
        _folvIDText.hidden = YES;
        _countryCode.hidden = NO;
        _phoneText.hidden = NO;
        _line.hidden = NO;
        [_useFoLvBtn setTitle:@"切换佛旅ID登录>" forState:UIControlStateNormal];
    }
    isUseFoLvID = !isUseFoLvID;
}

- (IBAction)loginClick:(id)sender {
    NSString *phoneText = _phoneText.text;
    NSDictionary *dic = [[NSDictionary alloc] init];
    [dic setValue:phoneText forKey:@"LoginName"];
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
