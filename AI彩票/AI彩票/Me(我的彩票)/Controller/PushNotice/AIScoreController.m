//
//  AIScoreController.m
//  AI彩票
//
//  Created by qianfeng on 15/9/14.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import "AIScoreController.h"

@interface AIScoreController ()

@end

@implementation AIScoreController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self settGroup1];
    [self settGroup2];
    [self settGroup3];
}

/**
 *  添加第0组数据
 */
-(void)settGroup1{
    //第一组数据
    AIConfigBaseItemModel *item0 = [[AISwitchItemModel alloc]initWithIcon:nil andTitle:@"提醒我关注比赛" ];
    
    AIGroupModel *groupModel = [[AIGroupModel alloc]init];
    groupModel.groupConfigM = @[item0];
    groupModel.groupFoot = @"关注比赛";
    [self.dataSourceM addObject:groupModel];
}

/**
 *  添加第二组数据
 */
-(void)settGroup2{
    //第一组数据
    AIConfigBaseItemModel *item0 = [[AILabelItemModel alloc]initWithIcon:nil andTitle:@"开启时间" ];
    
    AIGroupModel *groupModel = [[AIGroupModel alloc]init];
    groupModel.groupConfigM = @[item0];
    [self.dataSourceM addObject:groupModel];
}

/**
 *  添加第三组数据
 */
-(void)settGroup3{
    //第一组数据
    AIConfigBaseItemModel *item0 = [[AILabelItemModel alloc]initWithIcon:nil andTitle:@"结束时间" ];
    
    AIGroupModel *groupModel = [[AIGroupModel alloc]init];
    groupModel.groupConfigM = @[item0];
    [self.dataSourceM addObject:groupModel];
}

@end
