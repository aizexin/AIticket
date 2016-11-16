//
//  AIPushNotice.m
//  AI彩票
//
//  Created by qianfeng on 15/9/14.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import "AIPushNotice.h"
#import "AIOpenPushController.h"
#import "AIAwardAnimationController.h"
#import "AIScoreController.h"
@interface AIPushNotice ()

@end

@implementation AIPushNotice

-(void)settGroup1{
    //第一组数据
    AIConfigBaseItemModel *item0 = [[AIArrowItemModel alloc]initWithIcon:nil andTitle:@"开奖号码推送" andTarget:[AIOpenPushController class]];
    AIConfigBaseItemModel *item1 = [[AIArrowItemModel alloc]initWithIcon:nil andTitle:@"中奖动画" andTarget:[AIAwardAnimationController class]];
    AIConfigBaseItemModel *item2 = [[AIArrowItemModel alloc]initWithIcon:nil andTitle:@"比分直播" andTarget:[AIScoreController class]];
    AIConfigBaseItemModel *item3 = [[AIArrowItemModel alloc]initWithIcon:nil andTitle:@"购彩定时提醒" andTarget:[TestViewController class]];
    
    AIGroupModel *groupModel = [[AIGroupModel alloc]init];
    groupModel.groupConfigM = @[item0,item1,item2,item3];
    [self.dataSourceM addObject:groupModel];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self settGroup1];
}


@end
