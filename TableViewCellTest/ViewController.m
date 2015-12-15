//
//  ViewController.m
//  TableViewCellTest
//
//  Created by sylvan on 15/12/11.
//  Copyright (c) 2015年 sylvan. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
    //wqeqweqe
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"cell";
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (!cell) {
        
        cell =[[TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID andTag:indexPath.row];
    }
    
    cell.btn.tag = indexPath.row;
    cell.btn.on = [[NSUserDefaults standardUserDefaults] boolForKey:[NSString stringWithFormat:@"%lu",cell.btn.tag]];
  
    
    return cell;
}

@end
