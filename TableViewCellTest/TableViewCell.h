//
//  TableViewCell.h
//  TableViewCellTest
//
//  Created by sylvan on 15/12/11.
//  Copyright (c) 2015年 sylvan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell


@property (weak, nonatomic) IBOutlet UISwitch *btn;

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier andTag:(NSInteger) tag;
@end
