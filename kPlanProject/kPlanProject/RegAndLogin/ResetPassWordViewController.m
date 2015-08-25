//
//  ResetPassWordViewController.m
//  kPlanProject
//
//  Created by huangshuimei on 15/8/23.
//  Copyright (c) 2015年 huangshuimei. All rights reserved.
//

#import "ResetPassWordViewController.h"
#import "WTRequestCenter.h"
#import "Utility.h"

@interface ResetPassWordViewController ()
@property (weak, nonatomic) IBOutlet UIButton *getMessageCodeBtn;
@property (weak, nonatomic) IBOutlet UITextField *phoneText;
- (IBAction)getMessageAuthorizeCodeClick:(id)sender;



@end

@implementation ResetPassWordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark - post
-(void)getMessageCodePost:(NSString*)phoneNum andLastUrl :(NSString*)lastUrl {
    [self.view endEditing:YES];
    if (!(phoneNum && phoneNum.length)) {
        
        [[[UIAlertView alloc] initWithTitle:PROJECTLANGUAGE(@"Tips")
                                    message:PROJECTLANGUAGE(@"AccountPasswordNoEmpty")
                                   delegate:nil
                          cancelButtonTitle:PROJECTLANGUAGE(@"OK")
                          otherButtonTitles:nil] show];
        return;
    }
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@/%@",UserBaseUrl,lastUrl]];
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    
    phoneNum = [Utility encodeBase64:phoneNum];
    [parameters setValue:phoneNum forKey:@"Mobile"];
    [WTRequestCenter postWithURL:url
                      parameters:parameters completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
                          if (!error) {
                              NSError *jsonError = nil;
                              id obj = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&jsonError];
                              if (!jsonError) {
                                  NSLog(@"result:%@",obj);
    
                                  //TODO 1. 保存网络传回来的验证码 2.处理手机输入后，对比
                                  
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


- (IBAction)getMessageAuthorizeCodeClick:(id)sender {
    [self getMessageCodePost:_phoneText.text andLastUrl:GetMessageCodeUrl];
}
@end
