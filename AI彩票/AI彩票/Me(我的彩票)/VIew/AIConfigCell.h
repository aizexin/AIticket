//
//  AIConfigCell.h
//  AI彩票
//
//  Created by qianfeng on 15/9/13.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AIConfigBaseItemModel;
@interface AIConfigCell : UITableViewCell

@property(nonatomic,strong)AIConfigBaseItemModel *item;

+(instancetype)cellWithTabelView:(UITableView*)tableView;

@end
