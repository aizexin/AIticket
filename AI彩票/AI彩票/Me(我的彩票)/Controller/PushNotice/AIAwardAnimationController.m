//
//  AIAwardAnimationController.m
//  AI彩票
//
//  Created by qianfeng on 15/9/14.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import "AIAwardAnimationController.h"

@interface AIAwardAnimationController ()

@end

@implementation AIAwardAnimationController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self settGroup1];
}

/**
 *  添加第0组数据
 */
-(void)settGroup1{
    //第一组数据
    AIConfigBaseItemModel *item0 = [[AISwitchItemModel alloc]initWithIcon:nil andTitle:@"中奖动画" ];
    
    AIGroupModel *groupModel = [[AIGroupModel alloc]init];
    groupModel.groupConfigM = @[item0];
    groupModel.groupHeader = @"中奖动画";
    [self.dataSourceM addObject:groupModel];
}



@end
