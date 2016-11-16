//
//  AIAboutController.m
//  AI彩票
//
//  Created by qianfeng on 15/9/15.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import "AIAboutController.h"

@interface AIAboutController ()

@end

@implementation AIAboutController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self settGroup1];
}
/**
 *  设置第0组数据
 */
-(void)settGroup1{
    //第一组数据
    AIConfigBaseItemModel *item0 = [[AIArrowItemModel alloc]initWithIcon:nil andTitle:@"评分支持"];
    AIConfigBaseItemModel *item1 = [[AIArrowItemModel alloc]initWithIcon:nil andTitle:@"客服电话" ];
    item1.tel = @"123456";
 
    AIGroupModel *groupModel = [[AIGroupModel alloc]init];
    groupModel.groupConfigM = @[item0,item1];
    [self.dataSourceM addObject:groupModel];
}

@end
