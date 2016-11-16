//
//  AIConfigModel.m
//  AI彩票
//
//  Created by qianfeng on 15/9/13.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import "AIConfigBaseItemModel.h"

@implementation AIConfigBaseItemModel
-initWithIcon:(NSString *)configIcon andTitle:(NSString*)configTitle{
    if (self = [super init]) {
        _configIcon = configIcon;
        _configTitle = configTitle;
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
