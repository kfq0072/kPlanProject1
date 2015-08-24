//
//  FirstPageTableViewCell.h
//  kPlanProject
//
//  Created by huangshuimei on 15/8/20.
//  Copyright (c) 2015年 huangshuimei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstPageTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *headImage;
@property (weak, nonatomic) IBOutlet UILabel *FriendName;
@property (weak, nonatomic) IBOutlet UILabel *addressAndDeptment;
@property (weak, nonatomic) IBOutlet UIButton *careNumBtn;
@property (weak, nonatomic) IBOutlet UIButton *typeBtn;
@property (weak, nonatomic) IBOutlet UILabel *contents;
@property (weak, nonatomic) IBOutlet UIView *contentsImage;
@property (weak, nonatomic) IBOutlet UILabel *distance;
@property (weak, nonatomic) IBOutlet UILabel *praise;
@property (weak, nonatomic) IBOutlet UILabel *comment;
@property (weak, nonatomic) IBOutlet UIButton *commentBtn;
@property (weak, nonatomic) IBOutlet UILabel *updateTime;
- (IBAction)careBtnClick:(id)sender;
- (IBAction)typeBtnClick:(id)sender;
- (IBAction)commentBtnClick:(id)sender;

@end
