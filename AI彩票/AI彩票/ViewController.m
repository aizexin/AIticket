//
//  ViewController.m
//  AI彩票
//
//  Created by 艾泽鑫 on 15/9/10.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import "ViewController.h"
#import "AIDefine.h"
#import "AITabBarButton.h"
#import "AITabBar.h"
@interface ViewController ()<AITabBarDelegate>
@property(strong,nonatomic)AITabBar *myTabBar;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //添加到系统的tabbar上要用bounds
    _myTabBar = [[AITabBar alloc]initWithFrame:self.tabBar.bounds];
    for (int i = 0; i < 5; i++) {
        NSString *normalName = [NSString stringWithFormat:@"TabBar%d",i+1];
        NSString *disableName = [NSString stringWithFormat:@"TabBar%dSel",i+1];
        [_myTabBar addTabBarWithNormaName:normalName andImageDisEnableName:disableName];
    }
    _myTabBar.delegate = self;
    //把自定义的tabbar添加到系统的tab上
    [self.tabBar addSubview:_myTabBar];
    
}
-(void)tabBarJumpFrom:(NSInteger)from to:(NSInteger)to{
    //页面跳转
    self.selectedIndex = to;
}



@end
