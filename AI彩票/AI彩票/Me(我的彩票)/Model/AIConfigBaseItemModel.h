//
//  AIConfigModel.h
//  AI彩票
//
//  Created by qianfeng on 15/9/13.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^OptionBlock)();
@interface AIConfigBaseItemModel : UIView

/**
 *  图标名字
 */
@property(nonatomic ,copy)NSString *configIcon;
/**
 *  title
 */
@property(nonatomic ,copy)NSString *configTitle;
/**
 *  添加的代买块
 */
@property(nonatomic,copy)OptionBlock optionBlock;
/**
 电话
 */
@property(nonatomic ,copy)NSString *tel;


//-initWithIcon:(NSString *)configIcon andTitle:(NSString*)configTitle andTarget:(Class)configTarget;
-initWithIcon:(NSString *)configIcon andTitle:(NSString*)configTitle;
@end
