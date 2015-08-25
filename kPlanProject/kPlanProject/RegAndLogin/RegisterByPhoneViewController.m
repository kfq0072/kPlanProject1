//
//  RegisterByPhoneViewController.m
//  kPlanProject
//
//  Created by huangshuimei on 15/8/23.
//  Copyright (c) 2015年 huangshuimei. All rights reserved.
//

#import "RegisterByPhoneViewController.h"
#import "Utility.h"
#import "WTRequestCenter.h"

@interface RegisterByPhoneViewController ()
@property (weak, nonatomic) IBOutlet UITextField *phoneText;
@property (weak, nonatomic) IBOutlet UIButton *getMessageCodeBtn;

@property (weak, nonatomic) IBOutlet UITextField *password;
- (IBAction)registerClick:(id)sender;
- (IBAction)getMessageCodeClick:(id)sender;
@end

@implementation RegisterByPhoneViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
  
}

#pragma mark - post
- (NSDictionary *)assembleBody {
//    {"Clienttype":1,"Expires":100,"Timestamp":100,"Token":"15921565374","V":1,"BuddhistName":"无1为大师","BuddhistCerNo":"1111","City":1,"LoginName":"htc1","Mobile":"cHo790MNWqYGgRlBd7idng==","NickName":"htc","Password":"JxV7GHcyffM5rGKw8EdABLdk2kdpL1u8bGLmZQDG8tZVBBXa2YOr8fbzNJX6MrXO","Sex":2}
    NSMutableDictionary *tempDic = [NSMutableDictionary dictionary];
    tempDic[@"Clienttype"] = @"1";
    tempDic[@"Expires"] = @"100";
    tempDic[@"Timestamp"] = @"100";
    tempDic[@"Token"] = @"15921565374";
    tempDic[@"V"] = @"1";
    tempDic[@"BuddhistName"] = @"无1为大师";
    tempDic[@"BuddhistCerNo"] = @"11112";
    tempDic[@"City"] = @"1";
    tempDic[@"LoginName"] = @"htc2";
    tempDic[@"Mobile"] = [Utility encodeBase64:_phoneText.text];
    tempDic[@"NickName"] = @"htc";
    tempDic[@"Password"] = [Utility encodeBase64:_password.text];
    tempDic[@"Sex"] = @"2";

    
    NSDictionary *bodyDic = [NSDictionary dictionaryWithDictionary:tempDic];
    return bodyDic;
}
-(void)registerPost:(NSDictionary*)parametersDic andRegisterUrl :(NSString*)registerUrl{
    [self.view endEditing:YES];
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@/%@",UserBaseUrl,registerUrl]];
    
    [WTRequestCenter postWithURL:url
                      parameters:parametersDic completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
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

- (IBAction)getMessageCodeClick:(id)sender {
    
}
- (IBAction)registerClick:(id)sender {
    [self registerPost:[self assembleBody] andRegisterUrl:@"GeneralUserRegister"];
}
@end
