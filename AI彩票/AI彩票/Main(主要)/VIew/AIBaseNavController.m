//
//  AIBaseController.m
//  AI彩票
//
//  Created by 艾泽鑫 on 15/9/11.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import "AIBaseNavController.h"
#import "AIDefine.h"
#import "AIDefine.h"
@interface AIBaseNavController ()

@end

@implementation AIBaseNavController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    viewController.hidesBottomBarWhenPushed = YES;
    [super pushViewController:viewController animated:animated];
    

}
/**
 *  在第一次的初始化的时候调用，只调用一次
 在这里设置主题
 */
+(void)initialize{
    //设置导航栏主题
    UINavigationBar *navBar = [UINavigationBar appearance];
    if ([[UIDevice currentDevice].systemVersion floatValue] >= 7) {
        [navBar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:(UIBarMetricsDefault)];
    }else{
        [navBar setBackgroundImage:[UIImage imageNamed:@"NavBar"] forBarMetrics:(UIBarMetricsDefault)];
    }
    NSMutableDictionary *dictM = [NSMutableDictionary dictionary];
    dictM[NSFontAttributeName] = [UIFont systemFontOfSize:16];
    dictM[NSForegroundColorAttributeName] = [UIColor whiteColor];
    [navBar setTitleTextAttributes:dictM];
    
    //自定义barItem的主题
    //    [barItem setTintColor:[UIColor whiteColor]];
    UIBarButtonItem *barItem = [UIBarButtonItem appearance];
    NSMutableDictionary *barMd = [NSMutableDictionary dictionary];
    barMd[NSFontAttributeName] = [UIFont systemFontOfSize:16];
    barMd[NSForegroundColorAttributeName] = [UIColor whiteColor];
    [barItem setTitleTextAttributes:barMd forState:(UIControlStateNormal)];
    
    [navBar setTintColor:[UIColor whiteColor]];
    //判断是否是iOS6如果是iOS6就设置图片
    if (!iOS7) {
        UIImage *norImage = [UIImage imageNamed:@"NavButton"];
        UIImage *higImage = [UIImage imageNamed:@"NavButtonPressed"];
        [barItem setBackgroundImage:norImage forState:(UIControlStateNormal) barMetrics:(UIBarMetricsDefault)];
        [barItem setBackgroundImage:higImage forState:(UIControlStateHighlighted) barMetrics:(UIBarMetricsDefault)];
    }
}
@end
