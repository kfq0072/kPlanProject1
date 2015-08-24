//
//  LoginOrRegViewController.m
//  kPlanProject
//
//  Created by huangshuimei on 15/8/23.
//  Copyright (c) 2015年 huangshuimei. All rights reserved.
//

#import "LoginOrRegViewController.h"

@interface LoginOrRegViewController ()
@property (weak, nonatomic) IBOutlet UIButton *loginOrRegisterBtn;
@property (weak, nonatomic) IBOutlet UIButton *sinaIcon;
@property (weak, nonatomic) IBOutlet UIButton *tenxunIcon;
@property (weak, nonatomic) IBOutlet UIButton *weChatIcon;


- (IBAction)sinaClick:(id)sender;
- (IBAction)tenxunClick:(id)sender;
- (IBAction)weChatClick:(id)sender;



@end

@implementation LoginOrRegViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _loginOrRegisterBtn.layer.cornerRadius = 20.0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)sinaIconClick:(id)sender {
}
- (IBAction)sinaClick:(id)sender {
}

- (IBAction)tenxunClick:(id)sender {
}

- (IBAction)weChatClick:(id)sender {
}
@end
