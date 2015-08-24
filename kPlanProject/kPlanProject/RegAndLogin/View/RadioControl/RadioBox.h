//
//  RadioBox.h
//
//  Created by 凌洛寒 on 14-5-14.
//  Copyright (c) 2014年 凌洛寒. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol selectRadioBoxDelegate
- (void)getSelectBoxIndex:(NSInteger)index;
@end

@interface RadioBox : UIControl

@property (nonatomic, assign, getter = isOn) BOOL on;
@property (nonatomic) BOOL isClick;
@property (nonatomic, strong) UIColor *onTintColor;
@property (nonatomic, strong) UIColor *tintColor;
@property (nonatomic, strong) UIColor *boxColor;
@property (nonatomic, strong) UIColor *boxBgColor;

@property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, strong) UIFont *textFont;
@property (nonatomic, strong) NSString *text;
@property (nonatomic) NSInteger value;

@property (nonatomic, assign)id <selectRadioBoxDelegate>radioBoxDelegate;

- (void)setOn:(BOOL)on;

@end
