//
//  FirstPageViewController.m
//  kPlanProject
//
//  Created by huangshuimei on 15/8/20.
//  Copyright (c) 2015年 huangshuimei. All rights reserved.
//

#import "FirstPageViewController.h"
#import "FirstPageTableViewCell.h"

@interface FirstPageViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *firstPageTableView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;
- (IBAction)ask:(id)sender;

@end

@implementation FirstPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FirstPageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"firstPageCell" forIndexPath:indexPath];

    return cell;
}



- (IBAction)ask:(id)sender {
}
@end
