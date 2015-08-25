//
//  LoginViewController.m
//  kPlanProject
//
//  Created by huangshuimei on 15/8/22.
//  Copyright (c) 2015年 huangshuimei. All rights reserved.
//

#import "LoginViewController.h"
#import "Utility.h"
#import "WTRequestCenter.h"


@interface LoginViewController () {
    BOOL isUseFoLvID;
}
@property (weak, nonatomic) IBOutlet UITextField *phoneText;
@property (weak, nonatomic) IBOutlet UITextField *passwordText;
@property (weak, nonatomic) IBOutlet UIButton *useFoLvBtn;
@property (weak, nonatomic) IBOutlet UILabel *countryCode;
@property (weak, nonatomic) IBOutlet UILabel *line;
@property (weak, nonatomic) IBOutlet UITextField *folvIDText;
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
@property (weak, nonatomic) IBOutlet UIView *phoneTextView;
@property (weak, nonatomic) IBOutlet UIView *passwordView;



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


    [self setCornerRadius];
    
    [self leftBarBtn:@"返回" andIcon:@"backicon.png"];
    //set next page back button
//    [self backBarBtn:@"返回" andIcon:@"backicon.png"];
  
    
    _folvIDText.hidden = YES;
    
    
   
}

- (void)setCornerRadius {
    _phoneTextView.layer.cornerRadius = 30.0;
    _passwordView.layer.cornerRadius = 30.0;
    _loginBtn.layer.cornerRadius = 30.0;
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
    if (isUseFoLvID) {
        [self loginPost:_folvIDText.text andPassword:_passwordText.text andLoginType:@"login"];
    }else {
        [self loginPost:_passwordText.text andPassword:_passwordText.text andLoginType:@"loginByID"];
    }
   
}

- (IBAction)forgetPassWordClick:(id)sender {
}

- (IBAction)loginByQQ:(id)sender {
   
}

- (IBAction)loginByWeChat:(id)sender {
}

- (IBAction)loginBySina:(id)sender {
    
}
#pragma mark - post 
-(void)loginPost:(NSString*)userName andPassword :(NSString*)password andLoginType :(NSString*)urlType{
    [self.view endEditing:YES];
    if (!((userName && userName.length) && ( password && password.length))) {
        
        [[[UIAlertView alloc] initWithTitle:PROJECTLANGUAGE(@"Tips")
                                    message:PROJECTLANGUAGE(@"AccountPasswordNoEmpty")
                                   delegate:nil
                          cancelButtonTitle:PROJECTLANGUAGE(@"OK")
                          otherButtonTitles:nil] show];
        return;
    }
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@/%@",UserBaseUrl,urlType]];
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    
    password = [Utility encodeBase64:password];
    [parameters setValue:userName forKey:@"LoginName"];
    [parameters setValue:password forKey:@"Password"];
    
    //"Clienttype":0,"Expires":0,"Timestamp":0,"Token":null,"V":0,
    [parameters setValue:@"0" forKey:@"Clienttype"];
    [parameters setValue:@"0" forKey:@"Expires"];
    [parameters setValue:nil forKey:@"Token"];
    [parameters setValue:@"0" forKey:@"V"];
    
    [WTRequestCenter postWithURL:url
                      parameters:parameters completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
                          if (!error) {
                              NSError *jsonError = nil;
                              id obj = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&jsonError];
                              if (!jsonError) {
                                  NSLog(@"result:%@",obj);
                                  
                                  //TODO 跳到下一页
                              }else
                              {
                                  NSLog(@"jsonError:%@",jsonError);
                              }
                              
                          }else
                          {
                              NSLog(@"error:%@",error);
                          }
                      }];
}

@end
