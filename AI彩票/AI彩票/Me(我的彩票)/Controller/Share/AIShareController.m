//
//  AIShareController.m
//  AI彩票
//
//  Created by qianfeng on 15/9/15.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import "AIShareController.h"

@interface AIShareController ()

@end

@implementation AIShareController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self settGroup1];
}

/**
 *  设置第0组数据
 */
-(void)settGroup1{
    //第一组数据
    AIConfigBaseItemModel *item0 = [[AIArrowItemModel alloc]initWithIcon:@"WeiboSina" andTitle:@"新浪微博" andTarget:nil];
     AIConfigBaseItemModel *item1 = [[AIArrowItemModel alloc]initWithIcon:@"SmsShare" andTitle:@"短信分享" andTarget:nil];
     AIConfigBaseItemModel *item2 = [[AIArrowItemModel alloc]initWithIcon:@"MailShare" andTitle:@"邮件分享" andTarget:nil];
    AIGroupModel *groupModel = [[AIGroupModel alloc]init];
    groupModel.groupConfigM = @[item0,item1,item2];
    [self.dataSourceM addObject:groupModel];
}

@end
