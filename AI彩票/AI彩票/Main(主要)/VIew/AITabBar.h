//
//  AITabBar.h
//  AI彩票
//
//  Created by 艾泽鑫 on 15/9/11.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AITabBarDelegate <NSObject>

-(void)tabBarJumpFrom:(NSInteger)from to:(NSInteger)to;

@end
@interface AITabBar : UIView
@property(nonatomic,weak)id<AITabBarDelegate> delegate;
-(void)addTabBarWithNormaName:(NSString*)imageNormalName andImageDisEnableName:(NSString*)imageDisEnableName;
@end
