//
//  AIBaseConfigController.h
//  AI彩票
//
//  Created by qianfeng on 15/9/14.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AIConfigBaseItemModel.h"
#import "AIGroupModel.h"
#import "AIDefine.h"
#import "TestViewController.h"
#import "AIConfigCell.h"
#import "AIArrowItemModel.h"
#import "AISwitchItemModel.h"
#import "MBProgressHUD+NJ.h"
#import "AILabelItemModel.h"
@interface AIBaseConfigController : UITableViewController
@property(strong,nonatomic)NSMutableArray *dataSourceM;

@end
