//
//  AIArrowItem.m
//  AI彩票
//
//  Created by qianfeng on 15/9/13.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import "AIArrowItemModel.h"

@implementation AIArrowItemModel

-initWithIcon:(NSString *)configIcon andTitle:(NSString*)configTitle andTarget:(Class)configTarget{
    self = [super initWithIcon:configIcon andTitle:configTitle];
    if (self) {
        _configTarget = configTarget;
    }
    return self;
}


@end
