//
//  AIArrowItem.h
//  AI彩票
//
//  Created by qianfeng on 15/9/13.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import "AIConfigBaseItemModel.h"

@interface AIArrowItemModel : AIConfigBaseItemModel
/**
 *  目标控制器
 */
@property(nonatomic,assign)Class configTarget;

-initWithIcon:(NSString *)configIcon andTitle:(NSString*)configTitle andTarget:(Class)configTarget;
@end
