//
//  AITabBar.m
//  AI彩票
//
//  Created by 艾泽鑫 on 15/9/11.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import "AITabBar.h"
#import "AITabBarButton.h"

@interface AITabBar ()
@property(weak,nonatomic)AITabBarButton *disEnableBtn;

@end
@implementation AITabBar

-(void)addTabBarWithNormaName:(NSString*)imageNormalName andImageDisEnableName:(NSString*)imageDisEnableName{
    AITabBarButton *btn = [[AITabBarButton alloc]init];
    [btn setBackgroundImage:[UIImage imageNamed:imageNormalName] forState:(UIControlStateNormal)];
    [btn setBackgroundImage:[UIImage imageNamed:imageDisEnableName] forState:(UIControlStateDisabled)];
    [btn addTarget:self action:@selector(btnOnClick:) forControlEvents:(UIControlEventTouchDown)];
     [self addSubview:btn];
   
}
/**
 *  子视图发生改变的时候调用
 */
-(void)layoutSubviews{
    NSLog(@"----");
    for (int i = 0; i < self.subviews.count; i++) {
        AITabBarButton *btn = self.subviews[i];
        CGFloat btnW = self.frame.size.width /self.subviews.count;
        CGFloat btnH = self.frame.size.height;
        CGFloat btnX = i * btnW;
        CGFloat btnY = 0;
        
        btn.frame = CGRectMake(btnX, btnY, btnW, btnH);
        btn.tag = i;
        
    }

}
- (void)btnOnClick:(AITabBarButton*)btn{
    [_disEnableBtn setEnabled:YES];
    [btn setEnabled:NO];
    _disEnableBtn = btn;
    if ([self.delegate respondsToSelector:@selector(tabBarJumpFrom:to:)]) {
        [_delegate tabBarJumpFrom:_disEnableBtn.tag to:btn.tag];
    }
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
