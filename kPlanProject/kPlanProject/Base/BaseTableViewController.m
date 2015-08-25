//
//  BaseTableViewController.m
//  kPlanProject
//
//  Created by huangshuimei on 15/8/22.
//  Copyright (c) 2015年 huangshuimei. All rights reserved.
//

#import "BaseTableViewController.h"
#import "Utility.h"

@interface BaseTableViewController ()

@end

@implementation BaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - add left bar
- (void)leftBarBtn:(NSString*)title {
    UIButton *LeftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    LeftBtn.frame = CGRectMake(0, 0, 100, 20);
    
    [LeftBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [LeftBtn setTitle:title forState:UIControlStateNormal];
    
    [LeftBtn addTarget: self action:@selector(LeftBtnClick) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *ButtonItem = [[UIBarButtonItem alloc]initWithCustomView:LeftBtn];
    
    self.navigationItem.leftBarButtonItem = ButtonItem;
}

- (void)LeftBtnClick {
    NSLog(@"%s",__FUNCTION__);
}

#pragma mark - 加佛友按钮
- (void)rightBarBtn:(NSString*)title {
    
    UIButton *rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    rightBtn.frame = CGRectMake(0, 0, 100, 20);
    
    [rightBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [rightBtn setTitle:title forState:UIControlStateNormal];
    
    [rightBtn addTarget: self action:@selector(rightBarBtnClick) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *ButtonItem = [[UIBarButtonItem alloc]initWithCustomView:rightBtn];
    rightBtn.backgroundColor = [UIColor redColor];
    
    self.navigationItem.rightBarButtonItem = ButtonItem;
}

- (void)rightBarBtnClick {
    NSLog(@"rightBtnClick");
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
