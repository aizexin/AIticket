//
//  AIConfigTableController.m
//  AI彩票
//
//  Created by qianfeng on 15/9/13.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import "AIConfigTableController.h"
#import "AIConfigBaseItemModel.h"
#import "AIProductController.h"
#import "AIPushNotice.h"
#import "AIHelpModel.h"
#import "AIHelpController.h"
#import "AIShareController.h"
#import "AIAboutController.h"
@interface AIConfigTableController ()
@end

@implementation AIConfigTableController

/**
 *  设置第0组数据
 */
-(void)settGroup1{
    //第一组数据
    AIConfigBaseItemModel *configModel = [[AIArrowItemModel alloc]initWithIcon:@"MorePush" andTitle:@"推送和提醒" andTarget:[AIPushNotice class]];
    
    AIConfigBaseItemModel *configModel2 = [[AISwitchItemModel alloc]initWithIcon:@"IDInfo" andTitle:@"摇一摇"];
    AIConfigBaseItemModel *configModel3 = [[AISwitchItemModel alloc]initWithIcon:@"sound_Effect" andTitle:@"声音效果"];
    AIGroupModel *groupModel = [[AIGroupModel alloc]init];
    groupModel.groupConfigM = @[configModel,configModel2,configModel3];
    [self.dataSourceM addObject:groupModel];
}
/**
 *  设置第1组数据
 */
-(void)settGroup2{
    //第二组数据
    AIConfigBaseItemModel *configModel2 = [[AIArrowItemModel alloc]initWithIcon:@"MoreHelp" andTitle:@"帮助" andTarget:[AIHelpController class]];
    AIConfigBaseItemModel *configModel3 = [[AIArrowItemModel alloc]initWithIcon:@"MoreShare" andTitle:@"分享" andTarget:[AIShareController class]];
    AIConfigBaseItemModel *configModel4 = [[AIArrowItemModel alloc]initWithIcon:@"MoreMessage" andTitle:@"查看消息"];
    AIConfigBaseItemModel *configModel5 = [[AIArrowItemModel alloc]initWithIcon:@"MoreNetease" andTitle:@"产品推荐" andTarget:[AIProductController class]];
    AIConfigBaseItemModel *configModel6 = [[AIArrowItemModel alloc]initWithIcon:@"MoreAbout" andTitle:@"关于" andTarget:[AIAboutController class]];
    AIConfigBaseItemModel *configModel1 = [[AIArrowItemModel alloc]initWithIcon:@"MoreUpdate" andTitle:@"检查版本跟新" ];
    configModel1.optionBlock = ^{
        
        [MBProgressHUD showMessage:@"正在检查有没有新版本。。。"];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [MBProgressHUD hideHUD];
            [MBProgressHUD showSuccess:@"亲~没有新版本了"];
        });
    };
    
    AIGroupModel *groupModel2 = [[AIGroupModel alloc]init];
    groupModel2.groupConfigM = @[configModel1,configModel2,configModel3,configModel4,configModel5,configModel6];
    [self.dataSourceM addObject:groupModel2];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self settGroup1];
    [self settGroup2];
}




@end
