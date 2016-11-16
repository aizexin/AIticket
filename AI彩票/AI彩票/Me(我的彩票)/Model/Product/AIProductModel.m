//
//  AIProductModel.m
//  AI彩票
//
//  Created by qianfeng on 15/9/14.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import "AIProductModel.h"

@interface AIProductModel ()

@end

@implementation AIProductModel

-(instancetype)initWithDict:(NSDictionary*)dict
{
    self = [super init];
    if (self) {
        self.title = dict[@"title"];
        
        NSString *tempicon = dict[@"icon"];
       self.icon = [[tempicon componentsSeparatedByString:@"@"]firstObject];
    }
    return self;
}
+(instancetype)productWithDict:(NSDictionary*)dict{
    return [[self alloc]initWithDict:dict];
}

@end
