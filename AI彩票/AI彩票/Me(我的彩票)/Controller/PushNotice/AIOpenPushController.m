//
//  AIOpenPushController.m
//  AI彩票
//
//  Created by qianfeng on 15/9/14.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import "AIOpenPushController.h"

@interface AIOpenPushController ()

@end

@implementation AIOpenPushController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self settGroup1];
}

/**
 *  添加第0组数据
 */
-(void)settGroup1{
    //第一组数据
    AIConfigBaseItemModel *item0 = [[AISwitchItemModel alloc]initWithIcon:nil andTitle:@"双色球" ];
    AIConfigBaseItemModel *item1 = [[AISwitchItemModel alloc]initWithIcon:nil andTitle:@"大乐透" ];
    
    AIGroupModel *groupModel = [[AIGroupModel alloc]init];
    groupModel.groupConfigM = @[item0,item1];
    groupModel.groupHeader = @"发货就打开了手机付款链接的数据开发建设的路口见发闹骚的空间";
    [self.dataSourceM addObject:groupModel];
}



@end
