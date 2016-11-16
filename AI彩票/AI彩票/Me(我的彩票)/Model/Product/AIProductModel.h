//
//  AIProductModel.h
//  AI彩票
//
//  Created by qianfeng on 15/9/14.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AIProductModel : NSObject
//@property(nonatomic ,copy)NSString *customUrl;
@property(nonatomic ,copy)NSString *icon;
//@property(nonatomic ,copy)NSString *id;
@property(nonatomic ,copy)NSString *title;
//@property(nonatomic ,copy)NSString *url;

-(instancetype)initWithDict:(NSDictionary*)dict;
+(instancetype)productWithDict:(NSDictionary*)dict;
@end
