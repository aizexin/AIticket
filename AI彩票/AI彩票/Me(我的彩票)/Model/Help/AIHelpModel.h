//
//  AIHelpModel.h
//  AI彩票
//
//  Created by qianfeng on 15/9/14.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AIHelpModel : NSObject
/**
 *  对应的html
 */
@property(nonatomic ,copy)NSString *html;
/**
 *  标题
 */
@property(nonatomic ,copy)NSString *title;

+(instancetype)helpWithDict:(NSDictionary*)dict;
-(instancetype)initWithDict:(NSDictionary*)dict;
@end
