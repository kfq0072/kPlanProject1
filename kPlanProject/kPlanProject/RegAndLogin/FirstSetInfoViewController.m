//
//  FirstSetInfoViewController.m
//  kPlanProject
//
//  Created by huangshuimei on 15/8/23.
//  Copyright (c) 2015年 huangshuimei. All rights reserved.
//

#import "FirstSetInfoViewController.h"
#import "RadioBox.h"
#import "RadioGroup.h"

@interface FirstSetInfoViewController ()<selectRadioBoxDelegate> {
    __weak IBOutlet UIView *radioG;
    
    __weak IBOutlet RadioBox *radioBoxMan;
    __weak IBOutlet RadioBox *radioBoxWoman;
}

@end

@implementation FirstSetInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    radioBoxMan.value = 0;
    radioBoxMan.text =@"男";
    radioBoxWoman.value = 1;
    radioBoxWoman.text =@"女";
    
    
    radioBoxMan.radioBoxDelegate = self;
    radioBoxWoman.radioBoxDelegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - selectRadioBoxDelegate
- (void)getSelectBoxIndex:(NSInteger)index {
    NSLog(@"%ld",(long)index);
    
    switch (index) {
        case 0:{
            [radioBoxMan setOn:YES];
            [radioBoxWoman setOn:NO];
            break;
        }

        case 1: {
            [radioBoxMan setOn:NO];
            [radioBoxWoman setOn:YES];
            break;
        }
            
        default:
            break;
    }
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
