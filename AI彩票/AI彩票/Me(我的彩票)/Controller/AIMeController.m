//
//  MeController.m
//  AI彩票
//
//  Created by qianfeng on 15/9/11.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import "AIMeController.h"
#import "AIConfigTableController.h"
@interface AIMeController ()

@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
@end

@implementation AIMeController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *normalImage = [UIImage imageNamed:@"RedButton"];
    CGFloat normalImageW = normalImage.size.width *0.5;
    CGFloat normalImageH = normalImage.size.height * 0.5;
    //设置图片可拉伸范围
    UIImage *newNormalImage = [normalImage resizableImageWithCapInsets:UIEdgeInsetsMake(normalImageH, normalImageW, normalImageH, normalImageW) resizingMode:(UIImageResizingModeStretch)];
    [_loginBtn setBackgroundImage:newNormalImage forState:(UIControlStateNormal)];
    UIImage *selImage = [UIImage imageNamed:@"RedButtonPressed"];
    CGFloat selImageW = selImage.size.width * 0.5;
    CGFloat selImageH = selImage.size.height *0.5;
    UIImage *newSelImage = [selImage resizableImageWithCapInsets:UIEdgeInsetsMake(selImageH, selImageW, selImageH,selImageW) resizingMode:(UIImageResizingModeStretch)];
    [_loginBtn setBackgroundImage:newSelImage forState:(UIControlStateHighlighted)];
    
}
- (IBAction)onClickSettingBtn:(UIButton *)sender {
    AIConfigTableController *configC = [[AIConfigTableController alloc]initWithStyle:(UITableViewStyleGrouped)];
    [self.navigationController pushViewController:configC animated:YES];
}


@end
