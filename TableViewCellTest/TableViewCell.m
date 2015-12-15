//
//  TableViewCell.m
//  TableViewCellTest
//
//  Created by sylvan on 15/12/11.
//  Copyright (c) 2015年 sylvan. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier andTag:(NSInteger) tag
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self = [[[NSBundle mainBundle] loadNibNamed:@"TableViewCell" owner:nil options:nil] lastObject];
        
        
      
    }

    return self;
}


- (IBAction)btnValueChange:(UISwitch *)sender
{
    self.btn.on = sender.on;
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    [userDefault setBool:sender.on forKey:[NSString stringWithFormat:@"%lu",sender.tag]];
    [userDefault synchronize];
    NSLog(@"%d,%lu",sender.on,sender.tag);
}

//-(UISwitch *)btn
//{
//    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
//   _btn.on = [userDefault objectForKey:[NSString stringWithFormat:@"%lu",_btn.tag]];
//    return _btn;
//    
//}


@end
