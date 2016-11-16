//
//  AIGrounpModel.h
//  AI彩票
//
//  Created by qianfeng on 15/9/13.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AIConfigBaseItemModel;
@interface AIGroupModel : UIView
/**
 *  里面装的config模型
 */
@property(strong,nonatomic)NSArray *groupConfigM;
/**
 *  头标题
 */
@property(nonatomic ,copy)NSString *groupHeader;
/**
 *  脚标题
 */
@property(nonatomic ,copy)NSString *groupFoot;
@end
