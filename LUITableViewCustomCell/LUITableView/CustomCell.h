//
//  CustomCell.h
//  LUITableView
//
//  Created by OranWu on 13-1-5.
//  Copyright (c) 2013年 Oran Wu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell

@property (nonatomic, strong) NSString *model;//这里为了简洁就不引入Model新类，用String先代替

+ (float)cellHeight;

@end
